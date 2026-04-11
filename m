Received: (qmail 32406 invoked by uid 550); 11 Apr 2026 13:31:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 32367 invoked from network); 11 Apr 2026 13:31:48 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=notcom.org;
	s=jk; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:
	Content-Description; bh=j2LndgQrzkLEMh6Ofeo2XavDqI8f6mesQERC7jAsczc=;
	i=b49a205f73f09af5fde31f6781a721d6b26ace42@notcom.org; t=1775914309;
	x=1776562309; b=RyQWl7hoXkZawGXBfpqYe2XW14fEkVLxx/Z9zC2WYDyM1bPb+Nks0ch/QzX3b
	BdNV0URFBi+HLBfWWoWXHz3Aik2KVTiz/dPq1kDZSACjgLAr+u5hcBImMSP+osvoIGfd2eduX2GsD
	+XapfDsdjdQQNs4wL96yc29R3kVomX7K5nIuLWpOgAEJd5qFjnM+VEIROStk5Ep6bzpik8W9zkTo9
	EoCO/ehdqeokSmqn+DwHbPuaRme0GesmcHA8fuVV/7tJXaGAHCbQsulfKHcTdFcnZDwuSTkxBSzLh
	7516ATTlcvRalUwfXF34sIzjOJpYjgUd/F+crnA45SaPBdcOmQ==;
Date: Sat, 11 Apr 2026 16:31:34 +0300
From: Valtteri Vuorikoski <vuori@notcom.org>
To: oss-security@lists.openwall.com
Message-ID: <adpLiEEu1l6h8ecF@donburi.himad.notcom.org>
Mail-Followup-To: oss-security@lists.openwall.com
References: <ado-k2ivxft6BukD@donburi.himad.notcom.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ado-k2ivxft6BukD@donburi.himad.notcom.org>
User-Agent: NeoMutt/20251211-3-1d6324
Subject: Re: [oss-security] CVE-2026-35537+more: Roundcube arbitrary write +
 ID/XSS/etc. prior to 1.6.14

Addendum: versions 1.5.15/1.6.15 were released March 29 that correct regressions introduced
in 1.5.14/1.6.14 and fix one more cross-site issue:

  * SVG Animate FUNCIRI Attribute Bypass — Remote Image Loading via
  fill/filter/stroke, reported by class_nzm.

Announcement is at
<https://roundcube.net/news/2026/03/29/security-updates-1.7-rc6-1.6.15-1.5.15>. This
appears to be CVE-2026-35545.

 -Valtteri
 
