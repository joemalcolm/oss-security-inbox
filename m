X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/05/31/20
Message-ID: <BANLkTi=rVaiWh_oBXiB8ZLks441+-ynuAw@mail.gmail.com>
Date: Tue, 31 May 2011 17:54:16 -0600
From: Kurt Seifried <kurt@...fried.org>
To: oss-security@...ts.openwall.com
Subject: CVE request for Wireshark 1.4.6/1.2.16 Multiple DoS issues
Content-Type: text/plain; charset=utf-8

I didn't see any CVE's in the Wireshark Bug tracking/advisory nor
could I find these in the Red Hat Bugzilla (but I'm guessing as a CNA
they have CVE #'s assigned?)

Wireshark 1.2.17 fixes the following vulnerabilities:

Large/infinite loop in the DICOM dissector. (Bug 5876)
Versions affected: 1.2.0 to 1.2.16 and 1.4.0 to 1.4.6.

Huzaifa Sidhpurwala of the Red Hat Security Response Team discovered
that a corrupted Diameter dictionary file could crash Wireshark.
Versions affected: 1.2.0 to 1.2.16 and 1.4.0 to 1.4.6.

Huzaifa Sidhpurwala of the Red Hat Security Response Team discovered
that a corrupted snoop file could crash Wireshark. (Bug 5912)
Versions affected: 1.2.0 to 1.2.16 and 1.4.0 to 1.4.6.

David Maciejak of Fortinet's FortiGuard Labs discovered that malformed
compressed capture data could crash Wireshark. (Bug 5908)
Versions affected: 1.2.0 to 1.2.16 and 1.4.0 to 1.4.6.

Huzaifa Sidhpurwala of the Red Hat Security Response Team discovered
that a corrupted Visual Networks file could crash Wireshark. (Bug
5934)
Versions affected: 1.2.0 to 1.2.16 and 1.4.0 to 1.4.6.


http://www.wireshark.org/security/wnpa-sec-2011-07.html
http://www.wireshark.org/security/wnpa-sec-2011-08.html

-- 
Kurt Seifried
kurt@...fried.org
skype: (206) 905-9462
