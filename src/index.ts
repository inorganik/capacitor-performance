import { registerPlugin } from '@capacitor/core';

import type { PerformancePlugin } from './definitions';

const Performance = registerPlugin<PerformancePlugin>('Performance', {
  web: () => import('./web').then(m => new m.PerformanceWeb()),
});

export * from './definitions';
export { Performance };
