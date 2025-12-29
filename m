Received: (qmail 1053 invoked by uid 550); 29 Dec 2025 17:08:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 22430 invoked from network); 29 Dec 2025 14:45:27 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=bebt.de;
	s=d2; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Message-ID:Subject:To:From:Date:From:Sender:Reply-To:Subject:Date:Message-ID:
	To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=92CIXD6eH98zoZouT87wi6CGRr8BBE2SVXqy0CG/ruE=; b=s9M4atINVA5pRj3AJi2w7T3xr/
	M4yY9ysJnEEDmkdVz2bw+w2/dBbWbJg28D1usTtMS4gExOTTtldNITKli1eP6qHX2sEIz+wpXTL7+
	k6iWix6dNqqHgGTfPNwgZ0QiBwRZEhZrc3XFzSQbx8HwcP1iV5hMKSNNjgkQECBPJloJ3Tja364M8
	gXa2AXJ5pjuaba0kQf1riYwN//tGhlCj/lKtpPquAmiE5NCPOVgvZMayW2Wmz45OXCnuFFV6t2OJq
	H0Yij8SyiObnAGyc5bjAdmzedP2lH2cSZrES6UVrX/Pqt+XYW9nFCpEU+aYWycngZsHFs1EgVF+fs
	bhWwdpKw==;
Date: Mon, 29 Dec 2025 15:45:15 +0100
From: Andreas Metzler <ametzler@bebt.de>
To: oss-security@lists.openwall.com
Message-ID: <aVKT-72EaOkbvDNM@argenau.bebt.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <0bf8169edb12d002a4654c4ccf6aa54d84eba14a.camel@verbuecheln.ch>
X-Spam-Score: -2.0 (--)
X-Spam-Report: (-2.0 / 8.0 requ) ALL_TRUSTED=-1,BAYES_00=-1.9,TXREP=-1.639,URIBL_DBL_SPAM=2.5 autolearn=no autolearn_force=no
Subject: [oss-security] Re: Many vulnerabilities in GnuPG

Stephan Verbücheln <stephan@...buecheln.ch> wrote:
> The RCE bug was actually fixed as they already state in their slides.

> https://github.com/gpg/gnupg/commit/ad0c6c33c3d6fe7ff7cc8c2e73d02ead5788e5b3

This commit seems to be related to #3 https://gpg.fail/filename while
the RCE is #5 https://gpg.fail/memcpy aka CVE-2025-68973, isn't it?

cu Andreas
