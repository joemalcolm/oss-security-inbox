X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["754" "Tuesday" "6" "March" "2018" "14:07:43" "+1000" "Wade Mealing" "wmealing@redhat.com" "<CALJHwhTFmGV=uM0NUxE1Bs5fG3nmMATEOW=bJ6jzO2XzePNaQw@mail.gmail.com>" "25" "[oss-security] CVE-2018-1066 : kernel - CIFS - Null pointer dereference in ntlmv2 response client crash." nil nil nil "3" "2018030604:07:43" "[oss-security] CVE-2018-1066 : kernel - CIFS - Null pointer dereference in ntlmv2 response client crash." (number mark "U       wmealing@red Mar  6   25/754   " thread-indent "\"[oss-security] CVE-2018-1066 : kernel - CIFS - Null pointer dereference in ntlmv2 response client crash.\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28152 invoked by uid 550); 6 Mar 2018 04:07:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28119 invoked from network); 6 Mar 2018 04:07:56 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=Lc1FGE5Jnr1jGg8Z8GznSyDjFqa2Z2NOXyELVxXmLb4=;
        b=fzGnGRxZ8jwt2+yWFmJFwzTOjv/Ly3auQJSGlFe663wqQpjiZUDXaf0dx7w1M+6UEm
         B+3LiztCdXIo4wJX0hDXjoN/W8r5h69X2bkjBjielDBTQqhMUkUQcjKvIVK1kbJYGo7/
         Ov9w7pAvDd5jLf5q3la8gCETh5Hu9Va32gPBoKwAY4dBnDcwhRJyuqymHT5+0BNYOF1b
         F0uEwSRmoLAtQ53wgOmIK5wM4OsVCBDIIKJOCnsIANkIIeqaqDqwvHRRWZ+/YByE4sA9
         1iX4zw9iu7YxpOm2V5590t3v3vuQrukp14geEw6I2Jyk/+jAWHxlNBaZxgz7Anu/xbux
         puBg==
X-Gm-Message-State: APf1xPACDxprnyHVbVtKva16G6XMEI1Pg8b8PBMI18y2Hy30PGHik51d
	I6KmsGn2SdLfiNknvwT4lAOwglDSEKhxcmnWv71Hwu1giNo=
X-Google-Smtp-Source: AG47ELtrXWLRBawgmVDQYhHVnMUJ1uj4yNVFLezp3RQ44vp1CrgjFPOkA+e4o4vK7wyKFBGk4i+EgeK5l0+VXTPVRS4=
X-Received: by 10.107.187.65 with SMTP id l62mr20364232iof.1.1520309264254;
 Mon, 05 Mar 2018 20:07:44 -0800 (PST)
MIME-Version: 1.0
From: Wade Mealing <wmealing@redhat.com>
Date: Tue, 6 Mar 2018 14:07:43 +1000
Message-ID: <CALJHwhTFmGV=uM0NUxE1Bs5fG3nmMATEOW=bJ6jzO2XzePNaQw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2018-1066 : kernel - CIFS - Null pointer dereference in ntlmv2
 response client crash.

Gday,

Dan Aloni reported to Red Hat that there was a flaw in the CIFS client
implementation in kernel that could cause a null pointer dereference
and panic the a Linux CIFS client.  It would require the server to
implement the CIFS protocol incorrectly or momentarily impersonate the
CIFS server during session recovery (such as when the server was shut
down, or the network conditions were bad). The attacker would need to
return an empty "TargetInfo" in the NTLMSSP setup negotiation response
causing the null pointer dereference when interpreted by the client.


Report ( and patch )

https://patchwork.kernel.org/patch/10187633/


RedHat Bugzilla:

https://bugzilla.redhat.com/show_bug.cgi?id=1539599

Thanks,

Wade Mealing
Red Hat Product Security
