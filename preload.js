const { contextBridge, ipcRenderer } = require('electron');
contextBridge.exposeInMainWorld('lantern', {
  onOpen: cb => ipcRenderer.on('open', (_, u) => cb(u)),
  defaults: () => ipcRenderer.send('defaults')
});
