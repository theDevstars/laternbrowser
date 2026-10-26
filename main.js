const { app, BrowserWindow } = require('electron');
const path = require('path');
function create() {
  const w = new BrowserWindow({ width: 1280, height: 820, minWidth: 480, autoHideMenuBar: true, backgroundColor: '#222', webPreferences: { webviewTag: true, preload: path.join(__dirname, 'preload.js') } });
  w.loadFile('index.html');
  w.webContents.on('did-attach-webview', (e, c) => {
    c.setWindowOpenHandler(({ url }) => { w.webContents.send('open', url); return { action: 'deny' }; });
  });
}
app.whenReady().then(create);
app.on('window-all-closed', () => app.quit());
