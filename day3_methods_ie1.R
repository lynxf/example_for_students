# Проводим эксперимент по улучшению уровня гемоглобина у пациентов
sample_size <- 100 # Количество пациентов, прошедших, терапию
Hg_improve <- 20 # Истинное среднее изменение уровня Hg (в ГЕНЕРАЛЬНОЙ СОВОКУПНОСТИ)
Hg_sd <- 3 # Разброс в улучшении Hg
Hg_change <- rnorm(sample_size, Hg_improve, Hg_sd) # На сколько изменился Hg у пациентов?
hist(Hg_change)
# Меряем, на сколько изменилось давление после терапии:
result <- t.test(Hg_change, conf.level = 0.95)
print(result)
lower_bound <- result$conf.int[1] # Нижняя граница ДИ
upper_bound <- result$conf.int[2] # Верхняя граница ДИ
print(upper_bound-lower_bound)