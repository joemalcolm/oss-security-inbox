X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["901" "Thursday" "18" "August" "2016" "11:44:56" "-0700" "Eric Pruitt" "eric.pruitt@gmail.com" "<20160818184456.GA16393@sinister.codevat.com>" "19" "[oss-security] CVE request - slock, all versions NULL pointer dereference" nil nil nil "8" "2016081818:44:56" "[oss-security] CVE request - slock, all versions NULL pointer dereference" (number mark "U       eric.pruitt@ Aug 18   19/901   " thread-indent "\"[oss-security] CVE request - slock, all versions NULL pointer dereference\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28256 invoked by uid 550); 18 Aug 2016 18:54:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24511 invoked from network); 18 Aug 2016 18:45:10 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :pgp-key:user-agent;
        bh=ws2N94217maZBGdChOuWCAt9+LE+yvlhJOAmEk2kL5M=;
        b=iiNeMY7fD8rwCafM9c/RBVTPDpBRkbT1hmdgiJdUATSRuXjyio3Y9m0QknGeJFFinc
         jUUgjD16yo68HRNa3OT9W53AzijpMx8tizIis/fzcbi/WOA6E2g4OlW4vkcBMrvOmTvq
         K31oD3aifnS3o+tuMWdExK1S6i0gIycD4wwcGFVzDJ9SNE95YgJivIGQ9JuwJ0yfMbNt
         U5XjJevCMcle/rmtGpfjW02trUMz19sf5dlpEeuk5hH0zBSkdCOIxehNzVWzUE3J0vT8
         rtbxqIUhxyBst1AXUt1e9BO2z2T7FUs3GppB8PEYtR6yheCNtzwwZXEUSJg0KMZnKlE6
         ocMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:pgp-key:user-agent;
        bh=ws2N94217maZBGdChOuWCAt9+LE+yvlhJOAmEk2kL5M=;
        b=PTUx3K6XMZgSgbyAxVvBSBB6Jc6TUp9y8Fqn22FuJ2P0WCiJNYiQtVAICEKR74HqAe
         ZdoUDpGBvnK+7uhtQeJLl135Y9UJhmlfXLLXEuVgzl6FcFWN91ZrZ6asp/szMHj5bq09
         jq+MRWS3xIUA8BgFdVujjTFR5cbtFsDkZCmJzc8RfEKVdc/kl6DbjUyUQldo+R08aHyf
         8+EbH4ptfAAnXMU3IXXAL4Lt8WcFORyfpSwRj4t5CSGxXAx6uYFFmd0DAPjWLofUz7Qv
         XJ72FCrvaAhDGOQ64c9/wi3mrknDVbJWuS+bDHrx6BqnzPTQuLIoVfCM9gO+Olbf4L0P
         wnrg==
X-Gm-Message-State: AEkoouv9y6FdlLLmDeMkyEnjCLPtRTTqfVSQLLFiQDw0a4FS24WlkCeddYYNaRRi+pPRNQ==
X-Received: by 10.98.49.198 with SMTP id x189mr6573272pfx.135.1471545898286;
        Thu, 18 Aug 2016 11:44:58 -0700 (PDT)
Date: Thu, 18 Aug 2016 11:44:56 -0700
From: Eric Pruitt <eric.pruitt@gmail.com>
To: Open Source Security <oss-security@lists.openwall.com>
Message-ID: <20160818184456.GA16393@sinister.codevat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
PGP-Key: https://www.codevat.com/pgp.asc#F8601B5D2511B4C3535232488DDDE2E6053692AB
User-Agent: Mutt/1.5.23 (2014-03-12)
Subject: [oss-security] CVE request - slock, all versions NULL pointer dereference

The screen locking application slock (http://tools.suckless.org/slock/)
calls crypt(3) and uses the return value for strcmp(3) without checking
to see if the return value of crypt(3) was a NULL pointer. If the hash
returned by (getspnam()->sp_pwdp) is invalid, crypt(3) will return NULL
and set errno to EINVAL. This will cause slock to segfault which then
leaves the machine unprotected. A couple of common scenarios where this
might happen are:

- a machine using NSS for authentication; on the machine I discovered
  this bug, (getspnam()->sp_pwdp) returns "*".
- the user's account has been disabled for one reason or another; maybe
  account expiry or password expiry.

One approach to ensure slock will not run on machines without local
hashes would be to check the return value of crypt("x", (...)->sp_pwdp)
and verify that it returns a non NULL value before actually locking the
screen.

Eric
