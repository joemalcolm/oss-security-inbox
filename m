Received: (qmail 1164 invoked by uid 550); 12 May 2026 03:02:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1243 invoked from network); 12 May 2026 01:39:57 -0000
ARC-Seal: i=1; a=rsa-sha256; t=1778549989; cv=none; 
	d=zohomailcloud.ca; s=zohoarc; 
	b=A7O1l8G9M3Lpj784tyjm3dvwheJBvLLdnMDR6w9vviwIokEF3tg3NTaC/Gcbt2MiRhIaY70qD57KA6V2+DEmGKiiOx8c/RIxnQhSRK/cyVkNzrtaMq1D0VJJGonV2fXl0psFXgIhWg0RMu3UUqeSdqYE06oEg56NUaefd90i07U=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomailcloud.ca; s=zohoarc; 
	t=1778549989; h=Content-Type:Date:Date:From:From:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To:Cc; 
	bh=QjsHgxRJBw9xPFpLJW1a9WLjxKNF4Qd69YzCkKprECo=; 
	b=lcXYH9pmxlxK8NduZZs/AbplgVWBUJDRKQJR4TIxC0csm3SCDlSMLG6OC/GcuvlISFSwsD8xz9kUQwi4oPOIcdSovFVyJDUhBWC+kmCiua8lalKg9v7YZ79FmxTFTBe4Zgm6/HzRRX4YzhumDPODfg6loDbr0Yg5+6/Losc7Kxs=
ARC-Authentication-Results: i=1; mx.zohomailcloud.ca;
	dkim=pass  header.i=roiai.ca;
	spf=pass  smtp.mailfrom=tim@roiai.ca;
	dmarc=pass header.from=<tim@roiai.ca>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1778549989;
	s=zmail; d=roiai.ca; i=tim@roiai.ca;
	h=Date:Date:From:From:To:To:Message-Id:Message-Id:In-Reply-To:Subject:Subject:MIME-Version:Content-Type:Reply-To:Cc;
	bh=QjsHgxRJBw9xPFpLJW1a9WLjxKNF4Qd69YzCkKprECo=;
	b=Rff/AZpYmYwOgqIOgFTzLqw6B0gqVBCUCXaPTUkV/IB3CVVATi+loOkUjko3Vstm
	+gt+q/Pqu2cUQP+1drKU5KgLFSoSHNYp1hOepnxm3JK66/4/4nADKdf10g2fMa/z9mg
	SILVcBJKu7nmAm4aGOhvTStZcwfVXLwiCra0IV1k=
Date: Mon, 11 May 2026 18:39:47 -0700
From: Tim Shephard <tim@roiai.ca>
To: "oss-security" <oss-security@lists.openwall.com>
Message-Id: <19e19d71894.80289f98195045.3101805823226928719@roiai.ca>
In-Reply-To: 
MIME-Version: 1.0
Content-Type: multipart/alternative; 
	boundary="----=_Part_454025_1673504968.1778549987476"
Importance: Medium
User-Agent: Zoho Mail
X-Mailer: Zoho Mail
Subject: [oss-security] Public security analysis and LLM-assisted variant discovery

------=_Part_454025_1673504968.1778549987476
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi all,

I wanted to raise a process concern around detailed security analysis in pu=
blic bug records, code reviews, commit messages, and advisories.

I have been using LLM-assisted review across these sources to find real vul=
nerabilities, and one thing that has become clear is that this material is =
increasingly useful for finding variants, regressions, and related insecure=
 patterns. Even after a specific bug is fixed, detailed reasoning about exp=
loitability and nearby security sensitive code paths can remain valuable to=
 attackers.

I am not arguing against thorough security analysis or useful public adviso=
ries. I am suggesting we distinguish between public impact/fix guidance and=
 deeper security analysis that may be better kept in restricted channels.

I realize this cuts against some disclosure norms, but I think AI-assisted =
variant discovery changes the tradeoff enough to merit discussion.=C2=A0=C2=
=A0

Cheers,

Tim
Confidential communication. No warranties or commitments unless in a signed=
 agreement. If received in error, notify sender and delete. Unauthorized us=
e prohibited.




------=_Part_454025_1673504968.1778549987476--
