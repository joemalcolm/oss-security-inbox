Received: (qmail 23646 invoked by uid 550); 20 May 2026 10:06:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 23628 invoked from network); 20 May 2026 10:06:04 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	s=smtpauto.stravinsky; h=X-Debian-User:In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:To:From:Date:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=JWOZ0FtOk3QVE2RYSyGU37lItc8O3nT5dGCSHCp08zs=; b=PrmKHgN5SO3KsfaV6lin5Q80Xt
	lhHICxVf6JT8/fPMd9Us1vTfW/k1NMM3YEqAPMsL8d4+DXDIqDL3TyYTFJa9EZun1DzpiUwFSYuLN
	jyKs2BEFaolAoNYHh0xv8eY/p04ZPz7N8KpZxz6REQBKKzyDPJ88hYOZP1cXLcIkUlnUv/65BH8Lg
	fnV3fNh+lCBJt5zrGNTcZcaSmGNFz/r5Zvr4QO7OWEkiGEjWRivoKZlQlcldiaWTFTBb6SDI9Odfc
	mgmMjfc99nN3kJkU3qFvB+8bjXBO4aj6ZbbOQ9Pv5jTlJfvvwtEcE9iPo7aAHrTw/S3g/GBEY3dYm
	Q/wt3bwA==;
Date: Wed, 20 May 2026 11:05:53 +0100
From: Simon McVittie <smcv@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <ag2Hgd1x2yLaVikw@definition.pseudorandom.co.uk>
References: <20260519203345.01f21f23@riseup.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20260519203345.01f21f23@riseup.net>
X-Debian-User: smcv
Subject: Re: [oss-security] PCManFM-Qt allows arbitrary files to be opened
 via the org.freedesktop.FileManager1.ShowFolders method

On Tue, 19 May 2026 at 20:33:45 -0400, Aaron Rainbolt wrote:
>    # next command is run inside the sandbox, which happens to have
>    # both bash and dbus-send available
>    dbus-send \
>      --print-reply \
>      --session \
>      --dest=org.freedesktop.FileManager1 \

Note that as discussed in the other recent thread, Flatpak doesn't allow 
this call by default: it's only allowed because the org.mozilla.firefox 
app has it as an explicitly-added static permission.

But it's probably possible to reach a similar o.fd.FileManager1 call 
from sandboxed code indirectly, by asking the OpenURI portal to open a 
directory, which will try to dispatch it to a file manager.

     smcv
