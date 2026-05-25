Received: (qmail 7525 invoked by uid 550); 25 May 2026 06:56:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 22298 invoked from network); 25 May 2026 06:18:36 -0000
ARC-Seal: i=1; a=rsa-sha256; t=1779689903; cv=none; 
	d=zohomailcloud.ca; s=zohoarc; 
	b=pBJ38e70pQ698L30E1sq3XsYtlxtbr7SV4sScF34gnsCYQ2M34g1jK/FeMOJyvcpbLqjjRA2zh9sPdyW0CuaGseJ4vSqMl15B+fgRlHjc7+Hf9hqyOMx4oDJ0gnabSBq9kRMosswPWnJ4t0c0Cb5iJWwZdcwgXrSxSD73Zh/Cdg=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomailcloud.ca; s=zohoarc; 
	t=1779689903; h=Content-Type:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To:Cc; 
	bh=8+mWmZz2rUCKcc6nSK1WBqShAZl3c+g/X/07jgEvrWU=; 
	b=MaZLgMEHOBZjuUJkb0AO7IHkdF0QDEJ9fu3OU2tO2MGN5OTD+ALBui21qEMEuBwP1EJRP4femahTx66M1PzrUNBoQu/NUhWLt4rQ7JeER0DuKFCsGp6b330FUyxK+SCFUsaYu+EHqJ9wySoUCwBkiD+RZU/1nNfcjYRkGoYSvbQ=
ARC-Authentication-Results: i=1; mx.zohomailcloud.ca;
	dkim=pass  header.i=roiai.ca;
	spf=pass  smtp.mailfrom=sales@roiai.ca;
	dmarc=pass header.from=<sales@roiai.ca>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1779689903;
	s=zmail; d=roiai.ca; i=sales@roiai.ca;
	h=Date:Date:From:From:To:To:Message-Id:Message-Id:In-Reply-To:References:Subject:Subject:MIME-Version:Content-Type:Reply-To:Cc;
	bh=8+mWmZz2rUCKcc6nSK1WBqShAZl3c+g/X/07jgEvrWU=;
	b=SEuSkzdnysWb3eaLxJKxefJZJBG/cOccPbGGdlFLrDtbE+2O9S6cW9ajATxnITjV
	0sxCKKN7ATcg+nEib8dtF5jYbURu1qECIk6ItpS1CUKFVsGY1ZJC+nw5mDVnsMY7LeW
	fMcuVbb7hqKECIOW23Mpo3evFCCPfoYQ9KncowS4=
Date: Sun, 24 May 2026 23:18:23 -0700
From: ROI AI <sales@roiai.ca>
To: "oss-security" <oss-security@lists.openwall.com>
Message-Id: <19e5dc8d44a.6293ce47233797.2186903942335499604@roiai.ca>
In-Reply-To: <2b91a47f-3223-4db8-82e0-50801d656908@gmail.com>
References: <afDLFWVMK-r70PB0@yuggoth.org>
 <ed61471e-5674-4ad6-9b4c-729027f1073f@oracle.com>
 <19e48ffc072.20eeee58126634.4537984379441699684@roiai.ca>
 <19e494d88f3.fa2e5b9128090.8772053311417055861@roiai.ca>
 <f63f5a7e-6485-4bdc-866d-ab294a22536d@gmail.com>
 <19e4e2af936.4b7051cf156989.7683180300004644154@roiai.ca>
 <bab07bb5-aa3c-4a06-b8a7-c33efd179b41@gmail.com>
 <19e59d9cddf.5c251df4215598.6259862364259739522@roiai.ca> <2b91a47f-3223-4db8-82e0-50801d656908@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/alternative; 
	boundary="----=_Part_347302_601607906.1779689903178"
Importance: Medium
User-Agent: Zoho Mail
X-Mailer: Zoho Mail
Subject: Re: [oss-security] Coordinated Disclosure in the LLM Age

------=_Part_347302_601607906.1779689903178
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

>=20
> -- Jacob=20
=20
Yes, apologies for that.=C2=A0 And apologies to anyone who felt I was being=
 repetitive.=C2=A0 However, fwiw, my only agenda here is seeing open source=
 be secure, especially open source sovereign cloud.=C2=A0 I am hopeful that=
 is also everyone elses agenda as well.=C2=A0
Confidential communication. No warranties or commitments unless in a signed=
 agreement. If received in error, notify sender and delete. Unauthorized us=
e prohibited.




------=_Part_347302_601607906.1779689903178--
