######### LPA
metrics_file <- '/home/jonas/Desktop/jonas_si_gml_lpa/metrics_results.csv'

df <- read.csv(metrics_file)

# Modularity
plot(
    x=df$resilienceOneLink,
    y=df$ModularityMetric,
    main='LPA - Resilience one link vs Modularity'
)
plot(
    x=df$resilienceTwoLink,
    y=df$ModularityMetric,
    main='LPA - Resilience two link vs Modularity'
)
# Coverage
plot(
    x=df$resilienceOneLink,
    y=df$CoverageMetric,
    main='LPA - Resilience one link vs Coverage'
)
plot(
    x=df$resilienceTwoLink,
    y=df$CoverageMetric,
    main='LPA - Resilience two link vs Coverage'
)
# Performance
plot(
    x=df$resilienceOneLink,
    y=df$PerformanceMetric,
    main='LPA - Resilience one link vs Performance'
)
plot(
    x=df$resilienceTwoLink,
    y=df$PerformanceMetric,
    main='LPA - Resilience two link vs Performance'
)


############# Greedy Modularity Optimization
metrics_file <- '/home/jonas/Desktop/jonas_si_gml_greedy_modularity/metrics_results.csv'

df <- read.csv(metrics_file)

# Modularity
plot(
    x=df$resilienceOneLink,
    y=df$ModularityMetric,
    main='Greedy Modularity - Resilience one link vs Modularity'
)
plot(
    x=df$resilienceTwoLink,
    y=df$ModularityMetric,
    main='Greedy Modularity - Resilience two link vs Modularity'
)
# Coverage
plot(
    x=df$resilienceOneLink,
    y=df$CoverageMetric,
    main='Greedy Modularity - Resilience one link vs Coverage'
)
plot(
    x=df$resilienceTwoLink,
    y=df$CoverageMetric,
    main='Greedy Modularity - Resilience two link vs Coverage'
)
# Performance
plot(
    x=df$resilienceOneLink,
    y=df$PerformanceMetric,
    main='Greedy Modularity - Resilience one link vs Performance'
)
plot(
    x=df$resilienceTwoLink,
    y=df$PerformanceMetric,
    main='Greedy Modularity - Resilience two link vs Performance'
)




############# Fluid Communities k=2
metrics_file <- '/home/jonas/Desktop/jonas_si_gml_fluid_communities_k_2/metrics_results.csv'

df <- read.csv(metrics_file)

# Modularity
plot(
    x=df$resilienceOneLink,
    y=df$ModularityMetric,
    main='Fluid Communities k=2 - Resilience one link vs Modularity'
)
plot(
    x=df$resilienceTwoLink,
    y=df$ModularityMetric,
    main='Fluid Communities k=2 - Resilience two link vs Modularity'
)
# Coverage
plot(
    x=df$resilienceOneLink,
    y=df$CoverageMetric,
    main='Fluid Communities k=2 - Resilience one link vs Coverage'
)
plot(
    x=df$resilienceTwoLink,
    y=df$CoverageMetric,
    main='Fluid Communities k=2 - Resilience two link vs Coverage'
)
# Performance
plot(
    x=df$resilienceOneLink,
    y=df$PerformanceMetric,
    main='Fluid Communities k=2 - Resilience one link vs Performance'
)
plot(
    x=df$resilienceTwoLink,
    y=df$PerformanceMetric,
    main='Fluid Communities k=2 - Resilience two link vs Performance'
)




############# Fluid Communities k=3
metrics_file <- '/home/jonas/Desktop/jonas_si_gml_fluid_communities_k_3/metrics_results.csv'

df <- read.csv(metrics_file)

# Modularity
plot(
    x=df$resilienceOneLink,
    y=df$ModularityMetric,
    main='Fluid Communities k=3 - Resilience one link vs Modularity'
)
plot(
    x=df$resilienceTwoLink,
    y=df$ModularityMetric,
    main='Fluid Communities k=3 - Resilience two link vs Modularity'
)
# Coverage
plot(
    x=df$resilienceOneLink,
    y=df$CoverageMetric,
    main='Fluid Communities k=3 - Resilience one link vs Coverage'
)
plot(
    x=df$resilienceTwoLink,
    y=df$CoverageMetric,
    main='Fluid Communities k=3 - Resilience two link vs Coverage'
)
# Performance
plot(
    x=df$resilienceOneLink,
    y=df$PerformanceMetric,
    main='Fluid Communities k=3 - Resilience one link vs Performance'
)
plot(
    x=df$resilienceTwoLink,
    y=df$PerformanceMetric,
    main='Fluid Communities k=3 - Resilience two link vs Performance'
)




############# Fluid Communities k=4
metrics_file <- '/home/jonas/Desktop/jonas_si_gml_fluid_communities_k_4/metrics_results.csv'

df <- read.csv(metrics_file)

# Modularity
plot(
    x=df$resilienceOneLink,
    y=df$ModularityMetric,
    main='Fluid Communities k=4 - Resilience one link vs Modularity'
)
plot(
    x=df$resilienceTwoLink,
    y=df$ModularityMetric,
    main='Fluid Communities k=4 - Resilience two link vs Modularity'
)
# Coverage
plot(
    x=df$resilienceOneLink,
    y=df$CoverageMetric,
    main='Fluid Communities k=4 - Resilience one link vs Coverage'
)
plot(
    x=df$resilienceTwoLink,
    y=df$CoverageMetric,
    main='Fluid Communities k=4 - Resilience two link vs Coverage'
)
# Performance
plot(
    x=df$resilienceOneLink,
    y=df$PerformanceMetric,
    main='Fluid Communities k=4 - Resilience one link vs Performance'
)
plot(
    x=df$resilienceTwoLink,
    y=df$PerformanceMetric,
    ylim=c(0.5, 0.9),
    main='Fluid Communities k=4 - Resilience two link vs Performance'
)





############# Fluid Communities k=5
metrics_file <- '/home/jonas/Desktop/jonas_si_gml_fluid_communities_k_5/metrics_results.csv'

df <- read.csv(metrics_file)

# Modularity
plot(
    x=df$resilienceOneLink,
    y=df$ModularityMetric,
    main='Fluid Communities k=5 - Resilience one link vs Modularity'
)
plot(
    x=df$resilienceTwoLink,
    y=df$ModularityMetric,
    main='Fluid Communities k=5 - Resilience two link vs Modularity'
)
# Coverage
plot(
    x=df$resilienceOneLink,
    y=df$CoverageMetric,
    main='Fluid Communities k=5 - Resilience one link vs Coverage'
)
plot(
    x=df$resilienceTwoLink,
    y=df$CoverageMetric,
    main='Fluid Communities k=5 - Resilience two link vs Coverage'
)
# Performance
plot(
    x=df$resilienceOneLink,
    y=df$PerformanceMetric,
    main='Fluid Communities k=5 - Resilience one link vs Performance'
)
plot(
    x=df$resilienceTwoLink,
    y=df$PerformanceMetric,
    main='Fluid Communities k=5 - Resilience two link vs Performance'
)




############# Fluid Communities k=6
metrics_file <- '/home/jonas/Desktop/jonas_si_gml_fluid_communities_k_6/metrics_results.csv'

df <- read.csv(metrics_file)

# Modularity
plot(
    x=df$resilienceOneLink,
    y=df$ModularityMetric,
    main='Fluid Communities k=6 - Resilience one link vs Modularity'
)
plot(
    x=df$resilienceTwoLink,
    y=df$ModularityMetric,
    main='Fluid Communities k=6 - Resilience two link vs Modularity'
)
# Coverage
plot(
    x=df$resilienceOneLink,
    y=df$CoverageMetric,
    main='Fluid Communities k=6 - Resilience one link vs Coverage'
)
plot(
    x=df$resilienceTwoLink,
    y=df$CoverageMetric,
    main='Fluid Communities k=6 - Resilience two link vs Coverage'
)
# Performance
plot(
    x=df$resilienceOneLink,
    y=df$PerformanceMetric,
    main='Fluid Communities k=6 - Resilience one link vs Performance'
)
plot(
    x=df$resilienceTwoLink,
    y=df$PerformanceMetric,
    main='Fluid Communities k=6 - Resilience two link vs Performance'
)

