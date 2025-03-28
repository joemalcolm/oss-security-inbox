Received: (qmail 27728 invoked by uid 550); 28 Mar 2025 09:30:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 27692 invoked from network); 28 Mar 2025 09:30:15 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hboeck.de; s=key1;
	t=1743154204; bh=4Gg1JubDwCd1mYCyEYQQYP8HHNG2Be/1oml1savRmBA=;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Transfer-Encoding;
	b=ECmw2eMHLktMNUSCok8aLrPiLO1010znUGnhfE+z9W1xcsFqeLYNOLXtNTuIoiix9
	 kl7LkaLsAGZQj+dd8d3HA4NIv8dd8hdKI0Ue3j7GdpF/7wSYw9ddQa1ZqFqHiugZL6
	 S9nKUfpLNpiguW2Ef02iN4Ypagfg0SikWHM2KQ8dbCXTvme0MRnnlwrjtDICx9G0Y0
	 DEP+OOT5miwuK7aPl3zM38JMPDwz4N/dXOi07bJxym5CEBi8Jz3+CBaK49rMfe9Jcm
	 aQ22k2DbEa9/6yWr0OiRFdOfgsB3QHoP/H095hqn4U12njelHqA8hmh5Tk/b+h7gCX
	 Et1uw+AWN5EEA==
Original-Subject: use-after-free (maybe?) in libspf2
Author: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Date: Fri, 28 Mar 2025 10:30:02 +0100
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
To: oss-security@lists.openwall.com
Message-ID: <20250328103002.5aa4cefe@hboeck.de>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.49; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] use-after-free (maybe?) in libspf2

Hi,

I recently stumbled upon something, and by sharing it here, I'm hoping
that I can shed some light on it.

The libspf2 library appears to be the standard way of parsing SPF
records in C, but its development has mostly stalled.

In the project's github repo, there's an unmerged pull request claiming
to fix a use after free bug:
https://github.com/shevek/libspf2/pull/15

Quote: "Not sure what the intention is here, but in no case should
spf_record_exp point to a freed object. (Fixes crash on OpenBSD 5.9.)"

There has been no reaction to this report.

I looked briefly at the code (it zeros a pointer after it's been
freed), but I was unable to see a situation where this leads to a use
after free. But maybe I'm missing something.

In any case, maybe this is a warning that libspf2 appears to be
effectively unmaintained.


Unrelated to this specific issue, but there has been a somewhat
unresolved story about a security issue in libspf2 a while ago (also
with discussions on this mailing list).
As far as I can tell, the following happened:
* ZDI claimed to have found a security issue in libspf2, but has not
  shared any details:
  https://www.zerodayinitiative.com/advisories/ZDI-23-1472/
* CVE-2023-42118 got assigned.
* An integer underflow was fixed in libspf2's repository in response:
  https://github.com/shevek/libspf2/commit/d14abff4b544cfc53a8b5ef54cbc2353=
866b5081
  However, it is neither clear whether this is practically exploitable,
  nor whether it is actually the bug ZDI found.
* No release of libspf2 has been made since then, the fix for the
  Integer Underflow is not included in its latest version. Distros
  should probably add it to their package if they haven't done so
  already.
* ZDI never clarified what the issue they found was. (Which is, to not
  mince words, reckless and dangerous.)

--=20
Hanno B=C3=B6ck - Independent security researcher
https://itsec.hboeck.de/
https://badkeys.info/
