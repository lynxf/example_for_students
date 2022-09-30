# Проводим эксперимент по улучшению уровня гемоглобина у пациентов
sample_size <- 10 # Количество пациентов, прошедших, терапию
Hg_improve <- 20 # Истинное среднее изменение уровня Hg (в ГЕНЕРАЛЬНОЙ СОВОКУПНОСТИ)
Hg_sd <- 3 # Разброс в улучшении Hg
Hg_change <- rnorm(sample_size, Hg_improve, Hg_sd) # На сколько изменился Hg у пациентов?
hist(Hg_change)

# Меряем, на сколько изменилось давление после терапии:
result <- t.test(Hg_change, conf.level = 0.95)
print('Двусторонний ДИ:')
print(result$conf.int)

result <- t.test(Hg_change, conf.level = 0.95, alternative = 'greater')
print('Односторонний ДИ:')
print(result$conf.int)

# Попробуйте правосторонний ДИ:
