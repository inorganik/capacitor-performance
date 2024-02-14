export interface PerformancePlugin {
  launchComplete(): Promise<{ value: string }>;
}
