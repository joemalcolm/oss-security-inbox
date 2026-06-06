Received: (qmail 5154 invoked by uid 550); 6 Jun 2026 09:49:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 32428 invoked from network); 6 Jun 2026 09:16:43 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cpansec.org; s=gm1;
	t=1780737393;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=lKPAmSOmVUlKifQpbiMfKFff2kHEOOWmJd44KIDIcD4=;
	b=a9mEHIbzo2CPntrADVm4l1P4zXV54FcQx7wICyy7FiTs0cAqW0wC7VAEwsU8Y7gvO5XzYW
	4ioTYE7x5XCQOeEs40lbOfrFQs5cTqot3xylF5XxgqXU7rUdLMcXTEjDqHE/WWCagpTDIO
	aoHlEGAhuzvgEMV+xiPLzNI4ZGGWZ07BKgHtw5+kvOiLxG553+fsxQKa/ChrODbCi5sl1f
	Ydd27JFHbLYXy8agFCUQemImUGmjNgPWUjCa3JJd0Hds3Rz+JdYt9goNPbyDzMko/Q+71+
	tgGpc7W18v+t/BFqDgqjTONGyOgNXsaGBeUa4l/TsKzApWax6+ZufqqN83xjXA==
Message-ID: <ffe6a687-c94f-4557-bde2-06637549ad84@cpansec.org>
Date: Sat, 6 Jun 2026 10:16:32 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Robert Rothenberg <rrwo@cpansec.org>
Content-Language: en-GB
To: cve-announce@security.metacpan.org, oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-GND-Sasl: rrwo@cpansec.org
X-GND-Cause: dmFkZTGzQ85zJGWXw46CwZPZEHxLtBSeNj3FEstnV8oaEswiDbi+IaUVXF8KHL197AIHFHzNYgCPe0mmLurce/wMQ6KFbUA2KghZQTKFr72DVjf0h2dcqxPXgHWxVIf6WkgZ4rQf+BB8DlCapq0wW+eON6KlGEModAUuggRAq9yWG9FDZrdb+bGHncoYYxxoKyyWjlsORl+zpEoa+axwvGtI91s306ocgsXlFkcyaRnHKNyNec/TOTrFbFv1uYtP4ZfN8HjQg48thr7/Yd6MtE1zOq9yCL6nKvXX2NLuYfvd7xB3/n6Nnz6KEqxo9PuTUVyialz1nLNE72ee2YKs3CoF8FGwhIY3W6kDgNQnEPogZybapZBJ/xblyW5pDwEvSr+s//WmkEgWB7yF5xXv9n71KQ5J3By0xl3hFqtY+X7CaeB8hZAuANNbps6F0t62pHrkBXM1UzYN89YckirsYfugwTLlngynVMLRKhGexcNkgiETE4tGu/zu3ca31LCqB/Hg/PQdQPs5LTZD1mCnfUCcAyrAEQf/zdXCWST0AFWJE/CpdXdsyI8IKi7g30ATtrKrl1x9dGaRrtct52Bh59O6nzo8T8/cU4+vspdOMvxzfIdeaIdmsslhfWnQEKnUV//67xFKGHxN08h7XGDgb9EWXJPIofGsXmQXYaIVZbXgmomJSQ
X-GND-State: clean
X-GND-Score: 0
Subject: [oss-security] CVE-2026-10725: Protocol::HTTP2 versions through 1.12 for Perl is
 vulnerable to a HTTP/2 Bomb

=======================================================================
CVE-2026-10725                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-10725
   Distribution:  Protocol-HTTP2
       Versions:  through 1.12

       MetaCPAN:  https://metacpan.org/dist/Protocol-HTTP2
       VCS Repo:  https://github.com/vlet/p5-Protocol-HTTP2


Protocol::HTTP2 versions through 1.12 for Perl is vulnerable to a
HTTP/2 Bomb

Description
-----------
Protocol::HTTP2 versions through 1.12 for Perl is vulnerable to a
HTTP/2 Bomb.

Protocol::HTTP2's inbound HPACK path has no header-list size limit, so
a small HTTP/2 request can expand into large server memory (the "HTTP/2
bomb").

The headers_decode method materialises a full key+value copy per
indexed reference with no running size check, and the
stream_header_block_add method appends (since version 1.12) every
CONTINUATION frame to the per-stream buffer unbounded.

MAX_HEADER_LIST_SIZE (default 65536) is advertised in SETTINGS but
never consulted on decode.  It is absent from the decoder and from the
:limits export tag.

Problem types
-------------
- CWE-409 Improper Handling of Highly Compressed Data (Data
   Amplification)

Workarounds
-----------
Apply the patch.


References
----------
https://metacpan.org/release/CRUX/Protocol-HTTP2-1.12/source/lib/Protocol/HTTP2/HeaderCompression.pm#L133
https://metacpan.org/release/CRUX/Protocol-HTTP2-1.12/source/lib/Protocol/HTTP2/Stream.pm#L414
https://security.metacpan.org/patches/P/Protocol-HTTP2/1.12/CVE-2026-10725-r1.patch



