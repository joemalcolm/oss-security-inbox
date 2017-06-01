X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1692" "Thursday" "1" "June" "2017" "07:14:46" "-0600" "Kurt Seifried" "kseifrie@redhat.com" "<EC58D857-2282-4632-95E5-00205A75C51D@redhat.com>" "51" "Re: [oss-security] Information on recent sqlite3 issues?" "^Date:" nil nil "6" "2017060113:14:46" "[oss-security] Information on recent sqlite3 issues?" (number mark "        kseifrie@red Jun  1   51/1692  " thread-indent "\"Re: [oss-security] Information on recent sqlite3 issues?\"\n") "<20170601062046.GI15203@suse.com>" ("<20170531203037.hxl4v36govklpenk@pisco.westfalen.local>" "<95c188ba-76a3-7190-94ea-a369d011ae6c@suse.com>" "<20170601062046.GI15203@suse.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 14023 invoked by uid 550); 1 Jun 2017 13:15:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13999 invoked from network); 1 Jun 2017 13:14:59 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:content-transfer-encoding:mime-version:date
         :subject:message-id:references:in-reply-to:to;
        bh=LJcz11N40LVkOa9+YAq55VqNSIKNh6CRfZBMievcXM0=;
        b=i7rdyy7pBIUFI8Bya/pId0MZgTpaGtajhywBHbMggy+cN++YlwdRa6ilttXtd6gpMu
         nuFrdvZf/zQu/qQStaH4Yt1SrzPJmrqLQ9S8B/1LFsYYDkCfSw27lRdmo2N4iepi5UzX
         iMlB306r4rJOT4vZGLd4+rvdlxa9HKh9C7A8aflo4uDAnzKoHZO7uFHwfWI+9jWSlWaE
         IwO7iwet0tqJaNLxRcl/39wxq+oZ3DZM7WDsnCTX5x2UxHevcvdve0u+Zo+9gNy7fu/C
         FiU+kh7V03OaVtDftMLdcqC4X53O++55KEuQV0AeFYJ1nRjZtI9jY/TpzvH2Kx9XAdw5
         wUYQ==
X-Gm-Message-State: AODbwcAE1+G+3KVn2colX93RLqxj2sjWDBcZdPvkGmegKDm9tNHK+7Jz
	+78KfhugMUXj39e40hCHiA==
X-Received: by 10.107.59.67 with SMTP id i64mr1944299ioa.43.1496322887851;
        Thu, 01 Jun 2017 06:14:47 -0700 (PDT)
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (1.0)
Message-Id: <EC58D857-2282-4632-95E5-00205A75C51D@redhat.com>
References: <20170531203037.hxl4v36govklpenk@pisco.westfalen.local> <95c188ba-76a3-7190-94ea-a369d011ae6c@suse.com> <20170601062046.GI15203@suse.com>
In-Reply-To: <20170601062046.GI15203@suse.com>
X-Mailer: iPhone Mail (14F89)
Date: Thu, 1 Jun 2017 07:14:46 -0600
From: Kurt Seifried <kseifrie@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Information on recent sqlite3 issues?
To: oss-security@lists.openwall.com

I will bring this up at the next cve board meeting (2 weeks from now).


-Kurt





> On Jun 1, 2017, at 00:20, Johannes Segitz <jsegitz@suse.de> wrote:
>=20
>> On Thu, Jun 01, 2017 at 12:24:10AM +0200, Andreas Stieger wrote:
>> Hello,
>>=20
>>=20
>>> On 05/31/2017 10:30 PM, Moritz Muehlenhoff wrote:
>>> one of the latest Apple advisories mentions several vulnerabilities in =
sqlite:
>>> https://support.apple.com/en-us/HT207798
>>>=20
>>> CVE-2017-2513: found by OSS-Fuzz
>>> CVE-2017-2518: found by OSS-Fuzz
>>> CVE-2017-2520: found by OSS-Fuzz
>>> CVE-2017-2519: found by OSS-Fuzz
>>> CVE-2017-6983: Chaitin Security Research Lab (@ChaitinTech) working wit=
h Trend Micro's Zero Day Initiative
>>> CVE-2017-6991: Chaitin Security Research Lab (@ChaitinTech) working wit=
h Trend Micro's Zero Day Initiative
>>>=20
>>> Does anyone have additional information on those and whether that
>>> applies to the standard sqlite releases or Apple-specific changes?
>>=20
>> SUSE has asked Apple, but has not yet received an answer as far as I am
>> aware.
>=20
> They replied:
>=20
>> Thank you for contacting the Apple Product Security team.
>>=20
>> Please contact the SQLite maintainers to coordinate.
>=20
> I think it is problematic that they assign CVEs but don't provice any
> details even if it's not only their code. I contacted the sqlite-devs for
> details but didn't receive a reply up to this point.
>=20
> Johannes
> --=20
> GPG Key E7C81FA0       EE16 6BCE AD56 E034 BFB3  3ADD 7BF7 29D5 E7C8 1FA0
> Subkey fingerprint:    250F 43F5 F7CE 6F1E 9C59  4F95 BC27 DD9D 2CC4 FD66
> SUSE Linux GmbH, GF: Felix Imend=C3=B6rffer, Jane Smithard, Graham Norton
> HRB 21284 (AG N=C3=BCrnberg)
