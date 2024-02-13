import { WebPlugin } from '@capacitor/core';

import type { PerformancePlugin } from './definitions';

export class PerformanceWeb extends WebPlugin implements PerformancePlugin {
  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }
}
