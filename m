X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1265" "Wednesday" "18" "October" "2017" "12:55:21" "+0000" "Robert Watson" "robertcwatson1@gmail.com" "<CAOfWR+EHYftu3Hqbu0qGvk_kk3au-Gkj_WEH95syC3n-QuNnxg@mail.gmail.com>" "42" "Re: [oss-security] CVE-2017-8805: Unsafe symlinks not filtered in Debian mirror script ftpsync" "^Date:" nil nil "10" "2017101812:55:21" "[oss-security] CVE-2017-8805: Unsafe symlinks not filtered in Debian mirror script ftpsync" (number mark "        robertcwatso Oct 18   42/1265  " thread-indent "\"Re: [oss-security] CVE-2017-8805: Unsafe symlinks not filtered in Debian mirror script ftpsync\"\n") "<20171017162507.e7lx6fbnleugoxxa@waldi.eu.org>" ("<20171017162507.e7lx6fbnleugoxxa@waldi.eu.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 29903 invoked by uid 550); 18 Oct 2017 13:12:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 16089 invoked from network); 18 Oct 2017 12:55:43 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=L8RXk9INhk0SKX4/2eeXDmYi9BfGRBMPY8qr1awA6I4=;
        b=fCWSZpfhZsihPrKWG4u6VqSAXwqBM9NbwEHoGybb2b8/BQkIoMykwTWAzcY0R0HVTp
         6cdudZN7aRGoKG+GZ40ygA2M2X8PPwaKdNqxvUdbAhJYFp+qm2okvQjvphZBYdnIZjAU
         jirgq9byTx0z8pHt6yh2jBxCyqe4JkJIIO5DJtLvUiqUhJsdXdeZDn8RtmL3JwGolu7e
         lskzVXYOmr4CWKGxWZgviFd+Da5qp2uGeq3chkWB5POcQQqArfaP6yhRenpaW/arrPz2
         1pQrSCeoSj22w3MKl+R8hSGk/U9tqThQ6pcQF1eDLCyNWUL4dBgWQcn8zciaUFsceGva
         OPTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=L8RXk9INhk0SKX4/2eeXDmYi9BfGRBMPY8qr1awA6I4=;
        b=pjemE6U21aDrEdtA0gg/hya5fkMGXEvNUsk3Z5M93BasyRG9zkItaYY2aNQVQeqNq7
         412OiXbYa2RBQlDiL32ZK5Ep2vlyC/AtUKkmEWLfZ/5kg3Uht9gTiamJbEossNh4mAve
         S5lvY8GyisMqUOzVUWJNqFLU7Na9IaIFQq9s7HwC0A0+g4u8tAHMM1w6dhzgVK0CfLMh
         ZatvplorveHsLIExeZiJp7ZZsjNFsNV+7UyhGbg5mY4MLNpQBbAF7e1v7gOr6hq1ugVI
         cbcS62zMWlpAq7E2mmZKd0kWwBAxxG9jtXk7jqTjIzPYVNr3mbHrjdDj4hkCzWPog+PS
         wf7A==
X-Gm-Message-State: AMCzsaUzq8h++HRzrUkD36z3SKjT3ki6dN4j4YVawetDgr2werrfjNl6
	Qnt2S5B4BJq3ea1gcSOYenqUT7mcWZJbwd2QV9M=
X-Google-Smtp-Source: ABhQp+QRm9gO8N8x10bcx3TsgiHPTXuTD8lbVioBhZytbgZIDzTz4tJQLyGVucjcclA6lxCTKkYbrJQDwmyNgFioVSI=
X-Received: by 10.28.99.139 with SMTP id x133mr5963465wmb.122.1508331331901;
 Wed, 18 Oct 2017 05:55:31 -0700 (PDT)
MIME-Version: 1.0
References: <20171017162507.e7lx6fbnleugoxxa@waldi.eu.org>
In-Reply-To: <20171017162507.e7lx6fbnleugoxxa@waldi.eu.org>
Message-ID: <CAOfWR+EHYftu3Hqbu0qGvk_kk3au-Gkj_WEH95syC3n-QuNnxg@mail.gmail.com>
Content-Type: multipart/alternative; boundary="001a1148e1b83ddeef055bd1c1fb"
Date: Wed, 18 Oct 2017 12:55:21 +0000
From: Robert Watson <robertcwatson1@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2017-8805: Unsafe symlinks not filtered in
 Debian mirror script ftpsync
To: oss-security@lists.openwall.com, Bastian Blank <waldi@debian.org>

--001a1148e1b83ddeef055bd1c1fb
Content-Type: text/plain; charset="UTF-8"

Since security is determined by file and directory permissions and
ownership, not by symlinks, wouldn't the fact that a malicious user did not
have permissions to access the symlink's target file/directory prevent any
harm?

On Tue, Oct 17, 2017, 12:27 Bastian Blank <waldi@debian.org> wrote:

> Hi folks
>
> ftpsync is the tool we use to mirror Debian everywhere.  It uses rsync
> to do the heavy lifting.
>
> rsync can copy symlinks.  We enable this option, as the Debian tree
> includes symlinks in various of locations.  Unless a special option
> (--safe-links) is given, such symlinks can point to arbitrary locations,
> even outside of the mirror tree.
>
> An attacker with the ability to add symlinks to the upstream mirror can
> create symlinks to arbitrary files or even directories.  Depending on
> the config, a HTTP server will follow such symlinks.
>
> Upstream patch:
> ---------------
>   ->
> https://anonscm.debian.org/cgit/mirror/archvsync.git/commit/?id=d1ca2ab2210990b6dfb664cd6776a41b71c48016
>
> Regards,
> Bastian
>
> --
> Beam me up, Scotty!
>
-- 

Robert "DocSalvager" Watson
... trust in truth keeps hope alive
www.DocSalvage.info

--001a1148e1b83ddeef055bd1c1fb--
