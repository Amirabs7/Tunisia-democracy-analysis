library(ggplot2)

# Remove 0s (non-episodes) for clearer plot
outcomes <- subset(episodes, dem_ep_outcome_agg > 0)

ggplot(outcomes, aes(x = factor(dem_ep_outcome_agg))) +
  geom_bar(fill = "steelblue") +
  labs(title = "Outcomes of Democratization Episodes (Global)",
       x = "Episode Outcome (1 = Failed, 4 = Full Success)",
       y = "Number of Episodes") +
  scale_x_discrete(labels = c("1\nFailed", "2\nStagnated", "3\nPartial", "4\nSuccess"))

#Temporal Context: When Do Transitions Succeed?
  
outcomes$decade <- floor(outcomes$year / 10) * 10

ggplot(outcomes, aes(x = factor(decade), fill = factor(dem_ep_outcome_agg))) +
  geom_bar(position = "fill") +
  labs(title = "Success of Democratization Episodes Over Time",
       x = "Decade", y = "Proportion of Outcomes",
       fill = "Outcome") +
  scale_fill_manual(values = c("red", "orange", "gold", "darkgreen"),
                    labels = c("Failed", "Stagnated", "Partial", "Success"))

## Country Case Studies: Which Countries Drive Recent Success?

library(dplyr)

# Filter episodes that are successes (dem_ep_outcome_agg == 4) and started after 2010
recent_successes <- episodes %>%
  filter(dem_ep_outcome_agg == 4, dem_ep_start_year >= 2010) %>%
  select(country_name, dem_ep_start_year, dem_ep_end_year) %>%
  distinct()

# Show top countries by number of recent successes
table(recent_successes$country_name) %>%
  sort(decreasing = TRUE)

library(ggplot2)

success_counts <- recent_successes %>%
  count(country_name, sort = TRUE)

ggplot(success_counts, aes(x = reorder(country_name, n), y = n)) +
  geom_col(fill = "darkgreen") +
  coord_flip() +
  labs(title = "Countries with Successful Democratization Episodes (2010+)",
       x = "Country", y = "Number of Successful Episodes")
ggplot(summary_df, aes(x = reorder(country_name, success_year), y = 1, fill = post_status)) +
  geom_tile() +
  geom_text(aes(label = post_status), color = "white", size = 4) +
  coord_flip() +
  scale_fill_manual(values = c("Stable" = "forestgreen", "Fragile" = "goldenrod", "Setbacks" = "firebrick")) +
  labs(title = "Post-Democratization Episode Status by Country",
       x = "Country",
       y = "",
       fill = "Status") +
  theme_minimal() +
  theme(axis.text.y = element_text(size = 12),
        axis.ticks = element_blank(),
        axis.title.y = element_blank(),
        axis.text.x = element_blank())

library(ggplot2)
library(dplyr)

summary_df <- tibble::tribble(
  ~country_name, ~success_year, ~post_status,
  "Benin", 2010, "Stable",
  "Bolivia", 2019, "Fragile",
  "Fiji", 2010, "Fragile",
  "Honduras", 2010, "Fragile",
  "Thailand", 2010, "Setbacks",
  "Tunisia", 2011, "Setbacks",
  "Zambia", 2010, "Stable"
)

summary_df$post_status <- factor(summary_df$post_status, levels = c("Stable", "Fragile", "Setbacks"))

ggplot(summary_df, aes(x = reorder(country_name, success_year), y = 1, fill = post_status)) +
  geom_tile() +
  geom_text(aes(label = post_status), color = "white", size = 5, vjust = 0.5) +
  geom_text(aes(label = success_year), color = "black", size = 4, vjust = 2) +
  coord_flip() +
  scale_fill_manual(values = c("Stable" = "forestgreen", "Fragile" = "goldenrod", "Setbacks" = "firebrick")) +
  labs(title = "Post-Democratization Episode Status by Country",
       x = "Country",
       y = "",
       fill = "Status") +
  theme_minimal() +
  theme(axis.text.y = element_text(size = 12),
        axis.ticks = element_blank(),
        axis.title.y = element_blank(),
        axis.text.x = element_blank())

##Predictive Modeling (Logistic Regression)
# Recode the outcome: 1 = success (democratization), 0 = failure
episodes$success_binary <- ifelse(episodes$dem_ep_outcome_agg == 4, 1, 0)

# Logistic regression using only v2x_polyarchy
model1 <- glm(success_binary ~ v2x_polyarchy, data = episodes, family = binomial)

summary(model1)

exp(coef(model1))

episodes_1990 <- episodes %>% filter(year >= 1990)
model_1990 <- glm(success_binary ~ v2x_polyarchy, data = episodes_1990, family = binomial)
summary(model_1990)
exp(coef(model_1990))



# Create new data for plotting
polyarchy_vals <- seq(0, 1, by = 0.01)
new_data <- data.frame(v2x_polyarchy = polyarchy_vals)
new_data$predicted_prob <- predict(model_1990, newdata = new_data, type = "response")

# Plot
library(ggplot2)
ggplot(new_data, aes(x = v2x_polyarchy, y = predicted_prob)) +
  geom_line(color = "blue", size = 1.2) +
  labs(
    title = "Predicted Probability of Democratization Success (1990–)",
    x = "Polyarchy Score (v2x_polyarchy)",
    y = "Predicted Probability of Success"
  ) +
  theme_minimal(base_size = 14)



library(dplyr)
library(ggplot2)

# 1. Filter Tunisia data for democracy score over time
tunisia_years <- episodes %>%
  filter(country_name == "Tunisia", !is.na(v2x_polyarchy)) %>%
  select(year, v2x_polyarchy)

# Plot Tunisia’s Polyarchy score over time
ggplot(tunisia_years, aes(x = year, y = v2x_polyarchy)) +
  geom_line(color = "blue", size = 1.2) +
  labs(
    title = "Tunisia’s Polyarchy Score Over Time",
    x = "Year",
    y = "V-Dem Polyarchy Score (0–1)"
  ) +
  theme_minimal()

# 2. Summary of democratic episode variables for Tunisia (episodes since 1990)
tunisia_episodes <- episodes %>%
  select(dem_ep_start_year, dem_ep_end_year, dem_ep_outcome_agg, dem_ep_prch, dem_ep_ptr, dem_ep_subdep) %>%
  mutate(ep_length = dem_ep_end_year - dem_ep_start_year)

print(tunisia_episodes)

# 3. Summary statistics for Tunisia episodes (success rate and averages)
tunisia_summary <- tunisia_episodes %>%
  summarise(
    success_rate = mean(dem_ep_outcome_agg == 4),
    avg_prch = mean(dem_ep_prch, na.rm = TRUE),
    avg_ptr = mean(dem_ep_ptr, na.rm = TRUE),
    avg_subdep = mean(dem_ep_subdep, na.rm = TRUE)
  )

print(tunisia_summary)

##Tunisia’s Democratic Journey: Rise, Peak, and Recent Challenges (Polyarchy Score Over Time)



library(dplyr)
library(ggplot2)

# Filter Tunisia data with available polyarchy scores and relevant predictors from episodes dataset
tunisia_data <- episodes %>%
  filter(country_name == "Tunisia") %>%
  select(year, v2x_polyarchy, dem_ep_prch, dem_ep_ptr, dem_ep_subdep) %>%  # Use these democratic episode variables as predictors
  na.omit()

# Fit linear regression model predicting democracy score (polyarchy) using episode variables
model <- lm(v2x_polyarchy ~ dem_ep_prch + dem_ep_ptr + dem_ep_subdep, data = tunisia_data)
summary(model)

# Plot observed vs predicted polyarchy over time
tunisia_data <- tunisia_data %>%
  mutate(predicted_polyarchy = predict(model))

ggplot(tunisia_data, aes(x = year)) +
  geom_line(aes(y = v2x_polyarchy), color = "blue", size = 1.2) +
  geom_line(aes(y = predicted_polyarchy), color = "red", linetype = "dashed") +
  labs(
    title = "Observed and Predicted Polyarchy Score in Tunisia",
    x = "Year",
    y = "Polyarchy Score"
  ) +
  theme_minimal()


