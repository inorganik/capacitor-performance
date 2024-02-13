export interface PerformancePlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
}
