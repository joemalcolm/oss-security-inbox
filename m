Received: (qmail 30499 invoked by uid 550); 3 Oct 2024 16:07:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 26468 invoked from network); 3 Oct 2024 11:55:45 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=powerdns.com;
	s=202306; t=1727956537;
	bh=VdAwLjT3vnJdkiG4Tp+ALosXVx97USpIOZYm1aFessE=;
	h=Date:From:To:Subject:From;
	b=CAbK6FWOAQQQc0IGCKF9MZL+Sir1VgA5k+W0+TDLEVzDBxRZ+HjEFCgYQccQKL2Q4
	 94uv0VFOn7sgljH3hLRhBV5+UQ2xHVkLClq6YAZ/G8xd4IPmoSP08Nrb3XHa1WKPHH
	 E2vGfoo3hRolPCq89WJTv/ekkBqIQy/h7HJ/E5HFN33vPnH+NlHfBgrTlkYP8Z8KKe
	 t/QlPPA5ibk7F0H3zkaD9FEdSHSDTKZPYeVqMyy3BYqnoKD7GuOsahZXXE1b9PD7iB
	 WCNMV1f1Jy8GHbc3lGNggOg+FrimuBKis6SE+MUYRNszzWzLFJYaw6HNjg0UDCrHQ2
	 jnHECi1AZu3VQ==
Date: Thu, 3 Oct 2024 13:55:36 +0200 (CEST)
From: Otto Moerbeek <otto.moerbeek@powerdns.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Message-ID: <389505725.2464.1727956536978@appsuite.open-xchange.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_2463_440522597.1727956536977"
X-Priority: 3
Importance: Normal
X-Mailer: Open-Xchange Mailer v7.10.6-Rev69
X-Originating-Client: open-xchange-appsuite
Subject: [oss-security] PowerDNS Security Advisory 2024-04

------=_Part_2463_440522597.1727956536977
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

   Hello,

   Today we have released PowerDNS Recursor 4.9.9, 5.0.9 and 5.1.2.

   These releases fix PowerDNS Security Advisory 2024-04: Crafted
   responses can lead to a denial of service due to cache inefficiencies
   in the Recursor.
     __________________________________________________________________

   PowerDNS Security Advisory 2024-04: Crafted responses can lead to a denial of
   service due to cache inefficiencies in the Recursor

   CVE: CVE-2024-25590
   Date: 3rd of October 2024.
   Affects: PowerDNS Recursor up to and including 4.9.8, 5.0.8 and 5.1.1
   Not affected: PowerDNS Recursor 4.9.9, 5.0.9 and 5.1.2
   Severity: High
   Impact: Denial of service
   Exploit: This problem can be triggered by an attacker publishing a crafted zone
   Risk of system compromise: None
   Solution: Upgrade to patched version


   An attacker can publish a zone containing specific Resource Record
   Sets. Repeatedly processing and caching results for these sets can lead
   to a denial of service.

   CVSS Score: 7.5, see CVSS Calculator[1]

   The remedy is: upgrade to a patched version.

   We would like to thank Toshifumi Sakaguchi for bringing this issue to
   our attention and assisting in validating the patches.
     __________________________________________________________________

   Please refer to the changelogs  (4.9.9[2], 5.0.9[3], 5.1.2[4]) and
   upgrade guide[5] for additional details.

   Please send us all feedback and issues you might have via the mailing
   list[6], or in case of a bug, via GitHub[7].

   The tarballs (4.9.9[8], 5.0.9[9], 5.1.2[10]) (with signature files
   4.9.9[11], 5.0.9[12], 5.1.2[13]) are available from our
   download server[14] and packages for several distributions are
   available from our repository[15].

   We are grateful to the PowerDNS community for the reporting of bugs,
   issues, feature requests, and especially to the submitters of fixes and
   implementations of features.

References

   1. https://nvd.nist.gov/vuln-metrics/cvss/v3-calculator?vector=AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:H&version=3.1
   2. https://doc.powerdns.com/recursor/changelog/4.9.html#change-4.9.9
   3. https://doc.powerdns.com/recursor/changelog/5.0.html#change-5.0.9
   4. https://doc.powerdns.com/recursor/changelog/5.1.html#change-5.1.2
   5. https://docs.powerdns.com/recursor/upgrade.html
   6. https://mailman.powerdns.com/mailman/listinfo/pdns-users
   7. https://github.com/PowerDNS/pdns/issues/new/choose
   8. https://downloads.powerdns.com/releases/pdns-recursor-4.9.9.tar.bz2
   9. https://downloads.powerdns.com/releases/pdns-recursor-5.0.9.tar.bz2
  10. https://downloads.powerdns.com/releases/pdns-recursor-5.1.2.tar.bz2
  11. https://downloads.powerdns.com/releases/pdns-recursor-4.9.9.tar.bz2.sig
  12. https://downloads.powerdns.com/releases/pdns-recursor-5.0.9.tar.bz2.sig
  13. https://downloads.powerdns.com/releases/pdns-recursor-5.1.2.tar.bz2.sig
  14. https://downloads.powerdns.com/releases/
  15. https://repo.powerdns.com/


--

kind regards,
Otto Moerbeek
Senior Developer PowerDNS


Phone: +49 2761 75252 00 Fax: +49 2761 75252 30
Email: otto.moerbeek@open-xchange.com


-------------------------------------------------------------------------------------
Open-Xchange AG, Hohenzollernring 72, 50672 Cologne, District Court Cologne HRB 95366
Managing Board: Andreas Gauger, Dirk Valbert, Frank Hoberg, Stephan Martin
Chairman of the Board: Dr. Paul-Josef Patt

PowerDNS.COM BV, Koninginnegracht 5, 2514 AA Den Haag, The Netherlands
Managing Director: Robert Brandt
-------------------------------------------------------------------------------------
------=_Part_2463_440522597.1727956536977
Content-Type: application/pgp-signature; name=signature.asc
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename=signature.asc
X-Part-Id: 88d4ad91b93045cfb1f43c90033fa3db

LS0tLS1CRUdJTiBQR1AgU0lHTkFUVVJFLS0tLS0NClZlcnNpb246IEJDUEcgdjEuNjUNCg0KaVFF
Y0JBQUJDZ0FHQlFKbS9vV25BQW9KRU9yS3VRc1pZK3dydy9ZSCt3WFBLZ1JnYzJTZmlrZ3BtZWVa
NnZaZw0KeGYwaHR4WVh1SGFHMlJFak54R2FBUUJNYjVFR1VsTTRCWm5TSFU0Zk56V09lUjRpZ05h
bzlDNDUwQzRjKzlsZg0Kb1lXa1lkalI5ZEhvRnVFYkVKS3F4cnZOSE9HRk9JUXYvWG5aM3A0eUc2
WjNDbnphWWRCMHR0dkZJYTdPRTJWTQ0Kd2xUT21oRWpZSmRCQUdRTXNBd3ZXZ3NuYlVTVG5NTTNw
Qlora2hFKzIyMmNMdkhUTHpYNFkvQldHOXQvSjVBSA0KTjlYOE52ejMrSU5ucG5YNHBXZlduOXc2
UUU0eEIvOWI1ODlXcktLVVhkb0JFYi9vQnd0MkFIOVhMVmFjVjVyNw0KWVc4eXpuYk4xR2w0MFZW
czRtNHZCQWtLU0RGaEp5akt2NE03cFJTa2RYMm5SL2JlRklXOUVYWmRFVWRuYWtFPQ0KPTFsMHgN
Ci0tLS0tRU5EIFBHUCBTSUdOQVRVUkUtLS0tLQ0K

------=_Part_2463_440522597.1727956536977--
