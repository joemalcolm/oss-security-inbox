X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["366" "Thursday" "15" "September" "2016" "18:11:47" "-0400" "Jeffrey Walton" "noloader@gmail.com" "<CAH8yC8k3dB68=n-t-7d+-nL8dVWzUOmwX8YZrO+1p+Dv2uv-Nw@mail.gmail.com>" "10" "[oss-security] Re: Does a documentation bug elevate to CVE status? - Crypto++" "^Cc:" nil nil "9" "2016091522:11:47" "[oss-security] Re: Does a documentation bug elevate to CVE status? - Crypto++" (number mark "        noloader@gma Sep 15   10/366   " thread-indent "\"[oss-security] Re: Does a documentation bug elevate to CVE status? - Crypto++\"\n") "<20160915220008.70B7972E020@smtpvbsrv1.mitre.org>" ("<CAH8yC8k=G2OFp+9v53Lno-UATnXdG563oN3-JkGhxDGoFSuNPw@mail.gmail.com>" "<20160915220008.70B7972E020@smtpvbsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32198 invoked by uid 550); 16 Sep 2016 00:07:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 20139 invoked from network); 15 Sep 2016 22:11:59 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:reply-to:in-reply-to:references:from:date:message-id
         :subject:to:cc;
        bh=rDRobUMTqOLNv+M0YCSVH5apcJShvFkMM2sTvG2xmeU=;
        b=DtXJj3LjM6TMhYOZyH4kJ7JseC0puNqbndhcxVPpzRVaNxgOmuwP+vMcN9n6rbp2ZB
         GEzf0jaXlblsLnTB6Tbk9Q0ArFBZGanSw74PBRx4H5n/EN62LfSoVWnQW4cEMZvMYMSS
         YcwwGr8f3Bv+KWGDl/UCSxdXVkLDtsh/u2OTCxHFgHC7de1/+AtUAXrrsQbZEopHnxU2
         RasO1TxfZTjpzzgqkET9l9hbQ8sXYiGJtOnjQ9VrBhApW6ElAbNhUUj88RLZKFUvQgv7
         rM74mF1PlUk2ZWrk6hciJ4/uVERFuozjskO6bo+FET1O1RbF2jezsXbWFdMKxHqGVwEd
         4kZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:reply-to:in-reply-to:references
         :from:date:message-id:subject:to:cc;
        bh=rDRobUMTqOLNv+M0YCSVH5apcJShvFkMM2sTvG2xmeU=;
        b=HW/F/wIP6XQ2mipcj1NFPv2j27nJjgAxfbAdDjDqoYVdFxc+Art7t+sVabxnfD1IUn
         vzA5eFDebqp0ouzJhCHfNH/+Ni88LzRNSIfDAAkb9HpQOsSQ+5mcsukDE7LeJb2/bWhO
         0zeX40aQ7Ff3Tw33XQWliQKZY11LH/3DwUErFzzYpXVp+OTzgx4M2yG3/WlMvY0tQ0Uh
         fNIfrl4iEwZP5DaB1tszNFAHQHZMBtvU2a0M+fxg8kmmmqkUdyJmrBO8UIjxfWmr8xH4
         6EkGtoeZGW9ZeXr9BfK0ZW+dNR6f9g6qVLsaMLK9Vu8GlYMnw1epytDADa1KqWv0Ss89
         I9EQ==
X-Gm-Message-State: AE9vXwOSd63wfjB3ii0Geri4GRRcOfgau2pDBpok2VIBxsR7E4kmgxAl9tEDBW0BqyplbEcydOPYKf49yY9Eqw==
X-Received: by 10.107.168.70 with SMTP id r67mr20709571ioe.149.1473977507518;
 Thu, 15 Sep 2016 15:11:47 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20160915220008.70B7972E020@smtpvbsrv1.mitre.org>
References: <CAH8yC8k=G2OFp+9v53Lno-UATnXdG563oN3-JkGhxDGoFSuNPw@mail.gmail.com>
 <20160915220008.70B7972E020@smtpvbsrv1.mitre.org>
Message-ID: <CAH8yC8k3dB68=n-t-7d+-nL8dVWzUOmwX8YZrO+1p+Dv2uv-Nw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Cc: oss-security@lists.openwall.com
Date: Thu, 15 Sep 2016 18:11:47 -0400
From: Jeffrey Walton <noloader@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Does a documentation bug elevate to CVE status? - Crypto++
To: cve-assign@mitre.org

Damn, you guys are ruthless...

The Crypto++ project is tracking this at
https://github.com/weidai11/cryptopp/issues/277.

Please make it a public bug/CVE. The Crypto++ project believe in
complete transparency so decision makers can assess risk and and apply
remediations commensurate with their data security posture.

Jeffrey Walton on behalf of Crypto++ project.
