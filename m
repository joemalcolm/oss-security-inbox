X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2552" "Friday" "2" "June" "2017" "12:51:55" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty2J67rVs2agjkgxQ65eGnAn=iUKXy16HpTrWay_XEQPPQ@mail.gmail.com>" "67" "Re: [oss-security] Arbitrary terminal access via sudo on Linux" "^Date:" nil nil "6" "2017060218:51:55" "[oss-security] Arbitrary terminal access via sudo on Linux" (number mark "        kseifried@re Jun  2   67/2552  " thread-indent "\"Re: [oss-security] Arbitrary terminal access via sudo on Linux\"\n") "<85f9558a0a5e1fa9@courtesan.com>" ("<85f9558a0a5e1fa9@courtesan.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9542 invoked by uid 550); 2 Jun 2017 18:52:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9510 invoked from network); 2 Jun 2017 18:52:07 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=dNNhAMkjfjZLfpnxmxuU5g+GWrPf8/HuuycuvclPTo0=;
        b=V4elsNHshShsOVYHm+IZeLemTc2OmqtvJZiCUs27E/wUNgvY69MNXkJMY/5fuhwXUv
         eBY9BSxxDmP9mFUrfkDDN4y26I+reG4A338X6vwtvMeRugAzReg3OV7wym1+KPRVCOmH
         2T6oSGXUpclBfypVYFAq2fav6Fi5+fzL1+kXm5AROQ2iaUK2PwvQy+yMULYvjoTD19GF
         JT8xAICme/YHKldPI51aIp58ttkevgVN2UdYw8d1mokSa4H4hmFE3f1gH3cLXwEjV7bS
         7wEtKIfKEyU+H91TSjzLy0FacUWylJGQ0YKAMBVPGxxINwrqibd/V638ILzqzZEiqMIY
         P4pQ==
X-Gm-Message-State: AODbwcBQSoOkSfPuDbJWYsoba4iIzmlS+EpWB0YXRX7JxkOJ5ajpJQsx
	xjDhmBTL9RSeW+ajdRqDqul7fLzXfVPZZseWLA==
X-Received: by 10.202.221.87 with SMTP id u84mr5279121oig.64.1496429515762;
 Fri, 02 Jun 2017 11:51:55 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <85f9558a0a5e1fa9@courtesan.com>
References: <85f9558a0a5e1fa9@courtesan.com>
Message-ID: <CANO=Ty2J67rVs2agjkgxQ65eGnAn=iUKXy16HpTrWay_XEQPPQ@mail.gmail.com>
Content-Type: multipart/alternative; boundary="001a113d526cb87b600550fea599"
Date: Fri, 2 Jun 2017 12:51:55 -0600
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Arbitrary terminal access via sudo on Linux
To: oss-security <oss-security@lists.openwall.com>

--001a113d526cb87b600550fea599
Content-Type: text/plain; charset="UTF-8"

On Fri, Jun 2, 2017 at 12:48 PM, Todd C. Miller <Todd.Miller@courtesan.com>
wrote:

> The fix for CVE-2017-1000367 present in sudo 1.8.20p1 was incomplete
> as it did not address the posibility of a program name that contains
> a newline character.  This was fixed by sudo 1.8.20p2.  At the time,
> this was not believed to be a security issue due to the change in
> /dev traversal that was also part of sudo 1.8.20p1.
>
> However, there is another vector that can be exploited in sudo's
> get_process_ttyname() function under Linux.  The user can choose a
> device number that corresponds to a terminal currently in use by
> another user.  This allows an attacker to run any command allowed
> by sudo with read and write access to an arbitrary terminal device.
> Depending on the command, it may be possible to read sensitive data
> (such as a password) from another user's terminal.
>
> This alternate vector is still exploitable in sudo 1.8.20p1 when a
> symbolic link is made from the sudo binary to a name that contains
> a newline followed by a valid device number.  The full fix is
> included in sudo 1.8.20p2, released May 31, 2017.
>

Ok, I read the diff:

+       Sudo 1.8.20p2
+       [47836f4c9834]
+
+       * src/ttyname.c:
+       A command name may also contain newline characters so read
+       /proc/self/stat until EOF. It is not legal for /proc/self/stat to
+       contain embedded NUL bytes so treat the file as corrupt if we see
+       any. With help from Qualys.
+
+       This is not exploitable due to the /dev traversal changes in sudo
+       1.8.20p1 (thanks Solar!).

which says it is NOT exploitable, but you're saying that it is actually
exploitable? If confirmed yes I'll get you a new CVE for this asap. Thanks.


>
> I have updated https://www.sudo.ws/alerts/linux_tty.html accordingly.
> As before, the bug is specific to Linux systems that have SELinux
> enabled.  Sudo reopens the terminal device after changing its SELinux
> context when a role or type is specified on the command line.
>
> Thanks to Stephane Chazelas, who pointed out that the original patch
> did not address command names that include a newline, and Solar
> Designer, who noticed that the bug could also be used to access
> another user's terminal.
>
>  - todd
>



-- 

Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--001a113d526cb87b600550fea599--
