X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["727" "Wednesday" "4" "April" "2018" "14:22:53" "-0500" "Michael Catanzaro" "mcatanzaro@igalia.com" "<1522869773.22588.2@mail.igalia.com>" "23" "[oss-security] Re: [webkit-security] WebKitGTK+ Security Advisory WSA-2018-0003" nil nil nil "4" "2018040419:22:53" "[oss-security] Re: [webkit-security] WebKitGTK+ Security Advisory WSA-2018-0003" (number mark "U       mcatanzaro@i Apr  4   23/727   " thread-indent "\"[oss-security] Re: [webkit-security] WebKitGTK+ Security Advisory WSA-2018-0003\"\n") "<1522867580.22588.1@mail.igalia.com>" ("<1522867580.22588.1@mail.igalia.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 8139 invoked by uid 550); 4 Apr 2018 19:28:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31776 invoked from network); 4 Apr 2018 19:23:19 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; s=20170329;
	h=Content-Type:MIME-Version:References:In-Reply-To:Message-Id:Cc:To:Subject:From:Date; bh=sAOFyM1At9zUHp0c/F9Zmcw0Xcf294HkZamhBv0eJms=;
	b=EkNUJwa4t1naWDce3pZrv7JiZ3UDEmnjyAygJdjDz2YWIkHgOKXDfrthKTbtC2D0q7wBeb/T9iqZN3YirybOwWN7HHlmgw3SpLl6BGqOmTbtDs4mf2nBw1iDpkiQwz+wn8PEbM0EcStEddruHggyWj921JLE+wdJSq/tIBEX+CpDab38ycQ8WJmOll/qq1HBdephtHvzt4IcrjS5gXl/Jwds3uJXGI+Pq5zYxqJOzKvIWM/zYI49+8rv6RppBhoI3DPIwLjr/BJITXtHC9L0nSeHYpQTMlrQ70wWe/50DUO1VyRfSNBDxECpSM/4uaVlArxrIbjdyj6RdvsNDUnHlA==;
Date: Wed, 04 Apr 2018 14:22:53 -0500
From: Michael Catanzaro <mcatanzaro@igalia.com>
To: webkit-gtk@lists.webkit.org
Cc: oss-security@lists.openwall.com, security@webkit.org,
	bugtraq@securityfocus.com, distributor-list@gnome.org
Message-Id: <1522869773.22588.2@mail.igalia.com>
In-Reply-To: <1522867580.22588.1@mail.igalia.com>
References: <1522867580.22588.1@mail.igalia.com>
X-Mailer: geary/0.12.1
MIME-Version: 1.0
Content-Type: multipart/alternative; boundary="=-QLrrU9rP2dAse4Qf7qgv"
Subject: [oss-security] Re: [webkit-security] WebKitGTK+ Security Advisory WSA-2018-0003

--=-QLrrU9rP2dAse4Qf7qgv
Content-Type: text/plain; charset=us-ascii; format=flowed


Correction:

On Wed, Apr 4, 2018 at 1:46 PM, Michael Catanzaro 
<mcatanzaro@igalia.com> wrote:
> CVE-2018-4118
>     Versions affected: WebKitGTK+ before 2.18.1.
>     Credit to Jun Kokatsu (@shhnjk).
>     Impact: Processing maliciously crafted web content may lead to
>     arbitrary code execution. Description: Multiple memory corruption
>     issues were addressed with improved memory handling.

The versions affected for CVE-2018-4118 was not correct. An attempt to 
fix this issue was included in 2.18.1, but the change was incomplete. 
This should have read:

Versions affected: WebKitGTK+ before 2.20.0

--=-QLrrU9rP2dAse4Qf7qgv--

