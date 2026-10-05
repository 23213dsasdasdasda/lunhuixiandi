const vscode = require('vscode');
exports.activate = context => {
  context.subscriptions.push(vscode.commands.registerCommand('w3mf.test', async () => {
    if (!vscode.workspace.isTrusted) return;
    if (!await vscode.workspace.saveAll(false)) {
      return vscode.window.showErrorMessage('Save failed; map test cancelled.');
    }
    const tasks = await vscode.tasks.fetchTasks();
    const task = tasks.find(task => task.name === 'War3: F6 Test');
    if (!task) return vscode.window.showErrorMessage('Open the w3_mf project folder first.');
    if (vscode.tasks.taskExecutions.some(item => item.task.name === task.name)) return;
    await vscode.tasks.executeTask(task);
  }));
};
