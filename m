Received: (qmail 14025 invoked by uid 550); 17 Apr 2025 19:45:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 8127 invoked from network); 17 Apr 2025 18:40:53 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=aevum.de; s=mail;
	t=1744915244; bh=z4oFUowTHc6GZkJFGuDUOtCltifAFvZVsvAtuTOwUeE=;
	h=Subject:From:In-Reply-To:Date:Cc:References:To:From;
	b=dhlR/lKMAaBbK3fxY1HZPlNSQBpwWeeGB3ZJ/WMYvv/Y3KDxxSjPyID6P8tIvWSLU
	 fVou2xF7imcx556WsHBQaJM4T1vCm+O34K1HpcX83WT8URuMZBm1uZoaP1xVl12T7m
	 0IzE0IEfT1jMttMC9IEZ8GAPQZtebG/ipC5Ua2NA=
Content-Type: text/plain;
	charset=us-ascii
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.500.181.1.5\))
From: Nick Wellnhofer <wellnhofer@aevum.de>
In-Reply-To: <20250417175827.GA9214@openwall.com>
Date: Thu, 17 Apr 2025 20:40:33 +0200
Cc: oss-security@lists.openwall.com
Content-Transfer-Encoding: quoted-printable
Message-Id: <07E15E50-11FC-4164-8F58-2981E2F78A47@aevum.de>
References: <8CED60C5-6E49-42C3-A517-33E02F74F7DE@aevum.de>
 <20250417175827.GA9214@openwall.com>
To: Solar Designer <solar@openwall.com>
X-Mailer: Apple Mail (2.3826.500.181.1.5)
Subject: Re: [oss-security] Multiple vulnerabilities in libxml2

On Apr 17, 2025, at 19:58, Solar Designer <solar@openwall.com> wrote:
>=20
> The titles above say "buffer overflow", but information over the
> provided links suggests that both are actually out-of-bounds reads.
> Is this correct?
>=20
> On Thu, Apr 17, 2025 at 02:34:40PM +0200, Nick Wellnhofer wrote:
>> These issues are fixed in 2.14.2 and 2.13.8. Older branches won't receiv=
e official updates.
>>=20
>> [CVE-2025-32414] Buffer overflow when parsing text streams with Python A=
PI
>> https://gitlab.gnome.org/GNOME/libxml2/-/issues/889
>>=20
>> The Python Package Index contains an outdated and unsanctioned upload ba=
sed on libxml2 2.9.5 which is vulnerable. I tried to inform the PyPI mainta=
iners but I'm not sure my message made it through.
>=20
> "we return `lenread` even if it was larger than `len`! This is probably
> what causes callers to read past the end of the buffer, triggering
> memory errors reported by Valgrind"

I haven't looked at the details, but I assume that out-of-bounds writes are=
 possible as well.

> [CVE-2025-32415] Heap-based Buffer Overflow in xmlSchemaIDCFillNodeTables
>> https://gitlab.gnome.org/GNOME/libxml2/-/issues/890
>=20
> "This issue occurs when processing crafted xml files, leading to an
> out-of-bounds read and potential application crash.
> The reason is that the xmlSchemaIDCFillNodeTables function uses the -1
> operation when removing duplicate entry from the IDC node-table, but
> does not check the value of bind -> nbNodes. When bind -> nbNodes
> becomes 0, it will cause the bind -> nodeTable array to be read out of
> bounds."

Right, it's probably just an OOB read. The title was copied from the origin=
al report.

Nick=
