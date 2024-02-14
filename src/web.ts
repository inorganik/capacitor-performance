import { WebPlugin } from '@capacitor/core';

import type { PerformancePlugin } from './definitions';

export class PerformanceWeb extends WebPlugin implements PerformancePlugin {
  async launchComplete(): Promise<{ value: string }> {
    return { value: 'Performance plugin is not implemented on web' };
  }
}
