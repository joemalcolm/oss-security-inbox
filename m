Received: (qmail 3475 invoked by uid 550); 8 Mar 2026 09:07:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3457 invoked from network); 8 Mar 2026 09:07:01 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hboeck.de; s=key1;
	t=1772960811; bh=Pu3LuDyQWq3JDGonTszRwQXWR4wjoCbXYLeOuPzjBsw=;
	h=Date:From:To:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type:Content-Transfer-Encoding;
	b=Zf6W9BNy3dbakNfLVp0nbmPIPNtYrM+PbJmYk1IBmtBBftpXxaQzPRCNqOYo1bdRQ
	 EytmzUYdPAMqmDH2VtpX5X6u4OtChhXV26dv+85/fYTg6nvtKWM6Iy1e457i3uCWv5
	 p/DLM0Z7L/sYLzZHNqFoNhLSG0MxpHPUeZlXEb/AjwATqwCJQVU+1Q84ErFvA7PP6W
	 4bovaCF1c6j1hh4f1aMj2arjnyzOOf7NmeiaWNvkhahxgp7yCJDoZn3F6kVDNTKQ9x
	 YfLkc8QIdzssYBFl6MsIY3QUmropoAsk2obW4PNvdO6zCORpWD9fLxbjF+7jQrsokj
	 OeWT/Csl5jnFg==
Original-Subject: Re: [oss-security] AWStats awdownloadcsv.pl command injection and
 path traversal vulnerabilities
Author: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Date: Sun, 8 Mar 2026 10:06:50 +0100
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
To: oss-security@lists.openwall.com
Message-ID: <20260308100650.06c98705@hboeck.de>
In-Reply-To: 
 <Z2Y_rOJaVlLCYFBjgdkkl4SNaDAPnNTwxykLMSRBhRmA_lpIrjmLP4zrLhBwL1KHxJ465aMmWAEG4nTm5bHvY2o7KMUdoUJ-427OZLiHxDk=@vadersecurity.com>
References: 
 <Z2Y_rOJaVlLCYFBjgdkkl4SNaDAPnNTwxykLMSRBhRmA_lpIrjmLP4zrLhBwL1KHxJ465aMmWAEG4nTm5bHvY2o7KMUdoUJ-427OZLiHxDk=@vadersecurity.com>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.51; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] AWStats awdownloadcsv.pl command injection and
 path traversal vulnerabilities

On Sun, 08 Mar 2026 08:26:23 +0000
"christopher.downs" <christopher.downs@vadersecurity.com> wrote:

> Repository:
> https://github.com/eldy/AWStats/tree/develop

=46rom the repo:

"Deprecation notice (November 2025)
AWStats has been maintained for 25 years with enormous appreciation for
everyone who used and contributed to it. The AWStats project is now
deprecated and no longer actively developed. For modern,
privacy-respecting, supported log analytics we strongly recommend
migrating to Matomo Log Analytics."

So possibly we will not see a fixed version.

--=20
Hanno B=C3=B6ck - Independent security researcher
https://itsec.hboeck.de/
https://badkeys.info/
