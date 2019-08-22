# File management

:e              reload file
:q              quit
:q!             quit without saving changes
:w              write file
:w {file}       write new file
:x              write file and exit

# Movement

    k
  h   l         basic motion
    j

w               next start of word
W               next start of whitespace-delimited word
e               next end of word
E               next end of whitespace-delimited word
b               previous start of word
B               previous start of whitespace-delimited word
0               start of line
$               end of line
gg              go to first line in file
G               go to end of file


# Insertion
#   To exit from insert mode use Esc or Ctrl-C
#   Enter insertion mode and:

a               append after the cursor
A               append at the end of the line
i               insert before the cursor
I               insert at the beginning of the line
o               create a new line under the cursor
O               create a new line above the cursor
R               enter insert mode but replace instead of inserting chars
:r {file}       insert from file

# Editing

u               undo
yy              yank (copy) a line
y{motion}       yank text that {motion} moves over
p               paste after cursor
P               paste before cursor
<Del> or x      delete a character
dd              delete a line
d{motion}       delete text that {motion} moves over

# Search and replace with the `:substitute` (aka `:s`) command

:s/foo/bar/	replace the first match of 'foo' with 'bar' on the current line only
:s/foo/bar/g	replace all matches (`g` flag) of 'foo' with 'bar' on the current line only
:%s/foo/bar/g	replace all matches of 'foo' with 'bar' in the entire file (`:%s`)
:%s/foo/bar/gc	ask to manually confirm (`c` flag) each replacement 

# Preceding a motion or edition with a number repeats it n times
# Examples:
50k         moves 50 lines up
2dw         deletes 2 words
5yy         copies 5 lines
42G         go to line 42

#help
:help version-7.2
:help user-man

#delete
删除换行符：
:%s/\n//g

删除DOS文件中的回车符“^M”：
:%s/\r//g

转换DOS回车符“^M”为真正的换行符：
:%s/\r/\r/g

删除行尾的空格以及DOS回车符。它没有使用“/”字符作为替换命令各个参数间的分隔符，而是使用了“#”字符。命令还使用了“\?”正则表达式，用来匹配它前面出现的字符0次或1次。
:%s#\s*\r\?$##
:%s/\s\+$//g
:%s/^\s\+//g

删除三行空行：
:%s/^\n\{3}//

将连续的两个空行替换成一个空行：
:%s/\n\n/\r/g

远程编辑
vim scp://root@192.168.41.83//kssl/WEBUI/www/ssl/log_format.php

重复上次substitute
g&

重复Ex命令
@:

用字符编码插入特殊字符
ga
<C-v>u{code}

默认配置
vim -u NONE -N

Ex Command
:[range]delete [x]
:[range]yank [x]
:[line]put [x]
:[range]copy {address}
:[range]move {address}
:[range]join
:[range]normal {commands}

# plugin installl/uninstall
vim +BundleInstall! +q
vim +BundleClean +q

# plugin
bash-support.vim

# plugin doc
http://valloric.github.io/YouCompleteMe/#user-guide

set textwidth=1024

# write with sudo
:w !sudo tee %
