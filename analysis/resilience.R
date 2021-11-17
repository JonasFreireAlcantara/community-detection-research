setwd('/home/jonas/Desktop/round_2/')

######### LPA
metrics_file <- 'jonas_si_gml_lpa/metrics_results.csv'

df <- read.csv(metrics_file)

# Modularity
layout.matrix = matrix(c(1), nrow=1, byrow=TRUE)
layout(mat=layout.matrix)
png(file='images/lpa_modularidade_simples.png', width=990, height=819)
plot(
    x=df$resilienceOneLink,
    y=df$ModularityMetric,
    xlab='Resiliência',
    ylab='Modularidade',
    main='Falha Simples'
)
dev.off()
png(file='images/lpa_modularidade_dupla.png', width=990, height=819)
plot(
    x=df$resilienceTwoLink,
    y=df$ModularityMetric,
    xlab='Resiliência',
    ylab='Modularidade',
    main='Falha Dupla'
)
dev.off()


# Coverage
png(file='images/lpa_cobertura_simples.png', width=990, height=819)
plot(
    x=df$resilienceOneLink,
    y=df$CoverageMetric,
    xlab='Resiliência',
    ylab='Cobertura',
    main='Falha Simples'
)
dev.off()
png(file='images/lpa_cobertura_dupla.png', width=990, height=819)
plot(
    x=df$resilienceTwoLink,
    y=df$CoverageMetric,
    xlab='Resiliência',
    ylab='Cobertura',
    main='Falha Dupla'
)
dev.off()

# Performance
png(file='images/lpa_performance_simples.png', width=990, height=819)
plot(
    x=df$resilienceOneLink,
    y=df$PerformanceMetric,
    xlab='Resiliência',
    ylab='Performance',
    main='Falha Simples'
)
dev.off()
png(file='images/lpa_performance_dupla.png', width=990, height=819)
plot(
    x=df$resilienceTwoLink,
    y=df$PerformanceMetric,
    xlab='Resiliência',
    ylab='Performance',
    main='Falha Dupla'
)
dev.off()


############# Greedy Modularity Optimization
metrics_file <- 'jonas_si_gml_greedy_modularity/metrics_results.csv'

df <- read.csv(metrics_file)

png(file='images/gmo_modularidade_simples.png', width=990, height=819)
plot(
    x=df$resilienceOneLink,
    y=df$ModularityMetric,
    xlab='Resiliência',
    ylab='Modularidade',
    main='Falha Simples'
)
dev.off()
png(file='images/gmo_modularidade_dupla.png', width=990, height=819)
plot(
    x=df$resilienceTwoLink,
    y=df$ModularityMetric,
    xlab='Resiliência',
    ylab='Modularidade',
    main='Falha Dupla'
)
dev.off()

# Coverage
png(file='images/gmo_cobertura_simples.png', width=990, height=819)
plot(
    x=df$resilienceOneLink,
    y=df$CoverageMetric,
    xlab='Resiliência',
    ylab='Cobertura',
    main='Falha Simples'
)
dev.off()
png(file='images/gmo_cobertura_dupla.png', width=990, height=819)
plot(
    x=df$resilienceTwoLink,
    y=df$CoverageMetric,
    xlab='Resiliência',
    ylab='Cobertura',
    main='Falha Dupla'
)
dev.off()

# Performance
png(file='images/gmo_performance_simples.png', width=990, height=819)
plot(
    x=df$resilienceOneLink,
    y=df$PerformanceMetric,
    xlab='Resiliência',
    ylab='Performance',
    main='Falha Simples'
)
dev.off()
png(file='images/gmo_performance_dupla.png', width=990, height=819)
plot(
    x=df$resilienceTwoLink,
    y=df$PerformanceMetric,
    xlab='Resiliência',
    ylab='Performance',
    main='Falha Dupla'
)
dev.off()




############# Fluid Communities k=2
metrics_file <- 'jonas_si_gml_fluid_communities_k_2/metrics_results.csv'

df <- read.csv(metrics_file)

png(file='images/fc2_modularidade_simples.png', width=990, height=819)
plot(
    x=df$resilienceOneLink,
    y=df$ModularityMetric,
    xlab='Resiliência',
    ylab='Modularidade',
    main='Falha Simples'
)
dev.off()
png(file='images/fc2_modularidade_dupla.png', width=990, height=819)
plot(
    x=df$resilienceTwoLink,
    y=df$ModularityMetric,
    xlab='Resiliência',
    ylab='Modularidade',
    main='Falha Dupla'
)
dev.off()

# Coverage
png(file='images/fc2_coverage_simples.png', width=990, height=819)
plot(
    x=df$resilienceOneLink,
    y=df$CoverageMetric,
    xlab='Resiliência',
    ylab='Cobertura',
    main='Falha Simples'
)
dev.off()
png(file='images/fc2_coverage_dupla.png', width=990, height=819)
plot(
    x=df$resilienceTwoLink,
    y=df$CoverageMetric,
    xlab='Resiliência',
    ylab='Cobertura',
    main='Falha Dupla'
)
dev.off()

# Performance
png(file='images/fc2_performance_simples.png', width=990, height=819)
plot(
    x=df$resilienceOneLink,
    y=df$PerformanceMetric,
    xlab='Resiliência',
    ylab='Performance',
    main='Falha Simples'
)
dev.off()
png(file='images/fc2_performance_dupla.png', width=990, height=819)
plot(
    x=df$resilienceTwoLink,
    y=df$PerformanceMetric,
    xlab='Resiliência',
    ylab='Performance',
    main='Falha Dupla'
)
dev.off()




############# Fluid Communities k=3
metrics_file <- 'jonas_si_gml_fluid_communities_k_3/metrics_results.csv'

df <- read.csv(metrics_file)

png(file='images/fc3_modularidade_simples.png', width=990, height=819)
plot(
    x=df$resilienceOneLink,
    y=df$ModularityMetric,
    xlab='Resiliência',
    ylab='Modularidade',
    main='Falha Simples'
)
dev.off()
png(file='images/fc3_modularidade_dupla.png', width=990, height=819)
plot(
    x=df$resilienceTwoLink,
    y=df$ModularityMetric,
    xlab='Resiliência',
    ylab='Modularidade',
    main='Falha Dupla'
)
dev.off()

# Coverage
png(file='images/fc3_coverage_simples.png', width=990, height=819)
plot(
    x=df$resilienceOneLink,
    y=df$CoverageMetric,
    xlab='Resiliência',
    ylab='Cobertura',
    main='Falha Simples'
)
dev.off()
png(file='images/fc3_coverage_dupla.png', width=990, height=819)
plot(
    x=df$resilienceTwoLink,
    y=df$CoverageMetric,
    xlab='Resiliência',
    ylab='Cobertura',
    main='Falha Dupla'
)
dev.off()

# Performance
png(file='images/fc3_performance_simples.png', width=990, height=819)
plot(
    x=df$resilienceOneLink,
    y=df$PerformanceMetric,
    xlab='Resiliência',
    ylab='Performance',
    main='Falha Simples'
)
dev.off()
png(file='images/fc3_performance_dupla.png', width=990, height=819)
plot(
    x=df$resilienceTwoLink,
    y=df$PerformanceMetric,
    xlab='Resiliência',
    ylab='Performance',
    main='Falha Dupla'
)
dev.off()




############# Fluid Communities k=4
metrics_file <- 'jonas_si_gml_fluid_communities_k_4/metrics_results.csv'

df <- read.csv(metrics_file)

png(file='images/fc4_modularidade_simples.png', width=990, height=819)
plot(
    x=df$resilienceOneLink,
    y=df$ModularityMetric,
    xlab='Resiliência',
    ylab='Modularidade',
    main='Falha Simples'
)
dev.off()
png(file='images/fc4_modularidade_dupla.png', width=990, height=819)
plot(
    x=df$resilienceTwoLink,
    y=df$ModularityMetric,
    xlab='Resiliência',
    ylab='Modularidade',
    main='Falha Dupla'
)
dev.off()

# Coverage
png(file='images/fc4_coverage_simples.png', width=990, height=819)
plot(
    x=df$resilienceOneLink,
    y=df$CoverageMetric,
    xlab='Resiliência',
    ylab='Cobertura',
    main='Falha Simples'
)
dev.off()
png(file='images/fc4_coverage_dupla.png', width=990, height=819)
plot(
    x=df$resilienceTwoLink,
    y=df$CoverageMetric,
    xlab='Resiliência',
    ylab='Cobertura',
    main='Falha Dupla'
)
dev.off()

# Performance
png(file='images/fc4_performance_simples.png', width=990, height=819)
plot(
    x=df$resilienceOneLink,
    y=df$PerformanceMetric,
    xlab='Resiliência',
    ylab='Performance',
    main='Falha Simples'
)
dev.off()
png(file='images/fc4_performance_dupla.png', width=990, height=819)
plot(
    x=df$resilienceTwoLink,
    y=df$PerformanceMetric,
    xlab='Resiliência',
    ylab='Performance',
    main='Falha Dupla'
)
dev.off()





############# Fluid Communities k=5
metrics_file <- 'jonas_si_gml_fluid_communities_k_5/metrics_results.csv'

df <- read.csv(metrics_file)

png(file='images/fc5_modularidade_simples.png', width=990, height=819)
plot(
    x=df$resilienceOneLink,
    y=df$ModularityMetric,
    xlab='Resiliência',
    ylab='Modularidade',
    main='Falha Simples'
)
dev.off()
png(file='images/fc5_modularidade_dupla.png', width=990, height=819)
plot(
    x=df$resilienceTwoLink,
    y=df$ModularityMetric,
    xlab='Resiliência',
    ylab='Modularidade',
    main='Falha Dupla'
)
dev.off()

# Coverage
png(file='images/fc5_coverage_simples.png', width=990, height=819)
plot(
    x=df$resilienceOneLink,
    y=df$CoverageMetric,
    xlab='Resiliência',
    ylab='Cobertura',
    main='Falha Simples'
)
dev.off()
png(file='images/fc5_coverage_dupla.png', width=990, height=819)
plot(
    x=df$resilienceTwoLink,
    y=df$CoverageMetric,
    xlab='Resiliência',
    ylab='Cobertura',
    main='Falha Dupla'
)
dev.off()

# Performance
png(file='images/fc5_performance_simples.png', width=990, height=819)
plot(
    x=df$resilienceOneLink,
    y=df$PerformanceMetric,
    xlab='Resiliência',
    ylab='Performance',
    main='Falha Simples'
)
dev.off()
png(file='images/fc5_performance_dupla.png', width=990, height=819)
plot(
    x=df$resilienceTwoLink,
    y=df$PerformanceMetric,
    xlab='Resiliência',
    ylab='Performance',
    main='Falha Dupla'
)
dev.off()




############# Fluid Communities k=6
metrics_file <- 'jonas_si_gml_fluid_communities_k_6/metrics_results.csv'

df <- read.csv(metrics_file)

# Modularity
png(file='images/fc6_modularidade_simples.png', width=990, height=819)
plot(
    x=df$resilienceOneLink,
    y=df$ModularityMetric,
    xlab='Resiliência',
    ylab='Modularidade',
    main='Falha Simples'
)
dev.off()
png(file='images/fc6_modularidade_dupla.png', width=990, height=819)
plot(
    x=df$resilienceTwoLink,
    y=df$ModularityMetric,
    xlab='Resiliência',
    ylab='Modularidade',
    main='Falha Dupla'
)
dev.off()

# Coverage
png(file='images/fc6_coverage_simples.png', width=990, height=819)
plot(
    x=df$resilienceOneLink,
    y=df$CoverageMetric,
    xlab='Resiliência',
    ylab='Cobertura',
    main='Falha Simples'
)
dev.off()
png(file='images/fc6_coverage_dupla.png', width=990, height=819)
plot(
    x=df$resilienceTwoLink,
    y=df$CoverageMetric,
    xlab='Resiliência',
    ylab='Cobertura',
    main='Falha Dupla'
)
dev.off()

# Performance
png(file='images/fc6_performance_simples.png', width=990, height=819)
plot(
    x=df$resilienceOneLink,
    y=df$PerformanceMetric,
    xlab='Resiliência',
    ylab='Performance',
    main='Falha Simples'
)
dev.off()
png(file='images/fc6_performance_dupla.png', width=990, height=819)
plot(
    x=df$resilienceTwoLink,
    y=df$PerformanceMetric,
    xlab='Resiliência',
    ylab='Performance',
    main='Falha Dupla'
)
dev.off()

