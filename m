X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["794" "Thursday" "22" "February" "2018" "16:46:55" "+0000" "Justin Bull" "me@justinbull.ca" "<CAFB0D2QndLM--WJEGQFSpEcFp0ts_r0b-vHD-WL+tFH+uiX7SQ@mail.gmail.com>" "27" "[oss-security] Re: [CVE-2018-1000088] Stored XSS vulnerability in Doorkeeper gem v2.1.0 - v4.2.5" nil nil nil "2" "2018022216:46:55" "[oss-security] Re: [CVE-2018-1000088] Stored XSS vulnerability in Doorkeeper gem v2.1.0 - v4.2.5" (number mark "U       me@justinbul Feb 22   27/794   " thread-indent "\"[oss-security] Re: [CVE-2018-1000088] Stored XSS vulnerability in Doorkeeper gem v2.1.0 - v4.2.5\"\n") "<CAFB0D2Qx9-vK+EUh1sTV7Wfj1LJt3r7qZGZxQdmReWsOTwOnoQ@mail.gmail.com>" ("<CAFB0D2Qx9-vK+EUh1sTV7Wfj1LJt3r7qZGZxQdmReWsOTwOnoQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27654 invoked by uid 550); 22 Feb 2018 16:54:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19911 invoked from network); 22 Feb 2018 16:47:18 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=justinbull-ca.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=j/g7cl1St6bXi1SDaMgZ1GffjtaE2rromWOKNzrjeuc=;
        b=WZwYS0dCv3wOC3B6Z9UTb1JRNInATcVNt226+Muv7HuyjHC1uj5bW7BfeplVUxrjS4
         PD5SeLpfFlGypKGUt/yhG+4FzI3qbJNngEGZ+FIk5qUAw4Gc2hO/6DYNfPGzIuqAOoBS
         3RK72TjlQWbr30F/a238rwEOwPyVFRPfmG2aiHMgFeSmSTdTlupTJ0gKDtM2uAG7RuDz
         jsu3hRNmTx26W4NP0LNPJaNR8R+nU8GD8J0KmUxDPN+iS9SrpbUX1fRx2nfLeTU6aleN
         FNCEwe8HSj7duID0d+IM/Wihv61sF2mYNdJC8dBxeJfcVTY2LZUvhnveD7P2VxloYzRb
         0mrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=j/g7cl1St6bXi1SDaMgZ1GffjtaE2rromWOKNzrjeuc=;
        b=nrpcDWvb6eTPSnSWYwLPozvu+9s5shF+ZTxNpn73qmlSXNOEYIG7JNO2OLJXRXzMn0
         hle6XKPbVN/S4qn+cRBzp7M+JAbnSr0akru3IDX38gsdRuq+bBvw8Y+Mzr6SiZmnDnzL
         aGWW/LmerkZes4UgBOaNhmaK443++R4LLy/iFJnNe0wE87Xzd8PmY1mezgT6ecTtf/XC
         rpYef6v58p42ScyJfYvTFyI9Cp3TxfSy3UL75G+e52EnKl6gN1tq35Mt3qrzFFjBWirM
         hKSTgGXWhuhZGz8MgTNaOHQJuzSvj1sBNru5ioHbFqDdDsCScpoJvD7MdX4Qw380qeF2
         o7kw==
X-Gm-Message-State: APf1xPBZXDUckljvd6yBXg7r3QMC7X+dXn1zPiC9NI1+uEMhZljJfVsT
	3KipFgCyGhTMDxWLfI26nH3f3ivD7JSJeFMqXCTQ3LU=
X-Google-Smtp-Source: AH8x227ZITEs0jA8f9rpKDuYF9+LWYh6+6L7fIoVHqS7C2N1i45kDVxN06SC8cSSo/tqxvj3KUyn44VvyNWeTo7ozws=
X-Received: by 10.36.48.135 with SMTP id q129mr8626799itq.23.1519318026262;
 Thu, 22 Feb 2018 08:47:06 -0800 (PST)
MIME-Version: 1.0
References: <CAFB0D2Qx9-vK+EUh1sTV7Wfj1LJt3r7qZGZxQdmReWsOTwOnoQ@mail.gmail.com>
In-Reply-To: <CAFB0D2Qx9-vK+EUh1sTV7Wfj1LJt3r7qZGZxQdmReWsOTwOnoQ@mail.gmail.com>
From: Justin Bull <me@justinbull.ca>
Date: Thu, 22 Feb 2018 16:46:55 +0000
Message-ID: <CAFB0D2QndLM--WJEGQFSpEcFp0ts_r0b-vHD-WL+tFH+uiX7SQ@mail.gmail.com>
To: oss-security@lists.openwall.com, bugtraq@securityfocus.com, 
	fulldisclosure@seclists.org
Content-Type: multipart/alternative; boundary="001a11c0124841ae660565cfcbcb"
Subject: [oss-security] Re: [CVE-2018-1000088] Stored XSS vulnerability in Doorkeeper gem
 v2.1.0 - v4.2.5

--001a11c0124841ae660565cfcbcb
Content-Type: text/plain; charset="UTF-8"

On Wed, Feb 21, 2018 at 5:17 PM Justin Bull <me@justinbull.ca> wrote:

>
> Solution:
> ---------
> Upgrade to Doorkeeper v4.2.6 or later
>
>
Apologies. This fails to account for a non-trivial scenario.

Any software using Doorkeeper that has generated its own custom views[0]
requires manual work to verify there's no explicit HTML in the
`client_name` and `native_redirect_uri` field values.

This has been updated in the bulletin's Fix section[1].

[0]: https://github.com/doorkeeper-gem/doorkeeper/wiki/Customizing-views
[1]:
https://blog.justinbull.ca/cve-2018-1000088-stored-xss-in-doorkeeper/#fix
-- 
Justin Bull
PGP Fingerprint: E09D 38DE 8FB7 5745 2044 A0F4 1A2B DEAA 68FD B34C

--001a11c0124841ae660565cfcbcb--
