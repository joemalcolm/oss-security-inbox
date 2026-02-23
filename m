Received: (qmail 23829 invoked by uid 550); 23 Feb 2026 08:28:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 23757 invoked from network); 23 Feb 2026 08:28:27 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=notcom.org;
	s=jk; h=Content-Type:MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:Cc
	:Content-Transfer-Encoding:Content-ID:Content-Description:In-Reply-To:
	References; bh=2tC+QB230bXx5ZTcP55lEIGBAOt5KvHEEw+ER1OdXQM=;
	i=9cdceae8c7b5bf2d4c2c643b5341fa4197f0c084@notcom.org; t=1771835309;
	x=1772483309; b=KvCU7A3X5TANO65bXwJGwLDk/hZsMM55kIp9NGuJtbL+18GT5ldHD9Sm80JW7
	X1L3xUJ8k70TTxbJznvDGj+tfnDh55bS5whSgoMAgV68qJWuf7Feiup0ozrIHXnntKXESgGxG/LD6
	uRa0d+Gg9Zdzm4GGS56cmXemI81bZwp94d9TWF+PICbrPb1rDsR+rhSKonelib2ONubmpsXrAQ8SR
	F4T4ljlmCGwJzEChTaHZxqgvEBllQZ1w2w4OrPEF/ngkxlS+TP8nVvm1GJYHK/60Yt/B3rDVvOFNK
	4tJfDREZkJk5ScFjY/Bk+eGCyUUsy+1lcYcghVesleUSXOa7Aw==;
Date: Mon, 23 Feb 2026 17:28:14 +0900
From: Valtteri Vuorikoski <vuori@notcom.org>
To: oss-security@lists.openwall.com
Message-ID: <aZwNSZDGJM_qKMb3@donburi.himad.notcom.org>
Mail-Followup-To: oss-security@lists.openwall.com
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: NeoMutt/20251211-3-1d6324
Subject: [oss-security] CVE-2026-26079/CVE-2026-25916: Roundcube vulns prior to 1.5.13/1.6.13

Roundcube, a PHP-based webmail frontend, released a series of security updates
on Feb 8, again with little fanfare. From the release announcement:

 * Fix CSS injection vulnerability reported by CERT Polska.

 * Fix remote image blocking bypass via SVG content reported by nullcathedral.

There are fixed in the newly-released versions 1.5.13 and 1.6.13. While not
mentioned in the official annoucement, these appear to be CVE-2026-26079 (4.7)
and CVE-2026-25916 (4.3) respectively.

Full announcement:
https://roundcube.net/news/2026/02/08/security-updates-1.6.13-and-1.5.13

 -Valtteri
