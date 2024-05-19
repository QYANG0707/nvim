load(io.popen('oh-my-posh init cmd --config D:\\oh-my-posh\\themes\\paradox.omp.json'):read("*a"))()
-- 执行一个cmd命令，例如列出当前目录下的文件
local status, result = os.execute("cls")


print([[
 ██████╗ ██╗   ██╗ █████╗ ███╗   ██╗ ██████╗ 
██╔═══██╗╚██╗ ██╔╝██╔══██╗████╗  ██║██╔════╝ 
██║   ██║ ╚████╔╝ ███████║██╔██╗ ██║██║  ███╗
██║▄▄ ██║  ╚██╔╝  ██╔══██║██║╚██╗██║██║   ██║
╚██████╔╝   ██║   ██║  ██║██║ ╚████║╚██████╔╝
 ╚══██═╝    ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═══╝ ╚═════╝
]])
-- ▀▀

 
-- 打印执行状态和结果
-- print("Status:", status)
-- print("Result:", result)