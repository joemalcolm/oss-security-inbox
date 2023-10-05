Received: (qmail 6126 invoked by uid 550); 5 Oct 2023 08:49:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21688 invoked from network); 5 Oct 2023 08:15:01 -0000
Date: Thu, 5 Oct 2023 10:14:49 +0200
From: Erik Auerswald <auerswal@unix-ag.uni-kl.de>
To: oss-security@lists.openwall.com
Message-ID: <20231005081449.GA20205@unix-ag.uni-kl.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Author: Erik Auerswald <auerswal@unix-ag.uni-kl.de>
Subject: [oss-security] There is a curl "severity HIGH security problem" pre-announcement on
 GitHub

Hi,

there is a pre-announcement of a curl security problem with high severity
that can be found on GitHub:

 - https://github.com/curl/curl/discussions
 - https://github.com/curl/curl/discussions/12026

(I have seen a link to it from some web site, and did not see it on this
list yet.)

There is little information available, the GitHub discussions post says:

   "We are cutting the release cycle short and will release curl 8.4.0 on
    October 11, including fixes for a severity HIGH CVE and one severity
    LOW. The one rated HIGH is probably the worst curl security flaw in
    a long time.

    The new version and details about the two CVEs will be published
    around 06:00 UTC on the release day.

    * CVE-2023-38545: severity HIGH (affects both libcurl and the curl tool)
    * CVE-2023-38546: severity LOW (affects libcurl only, not the tool)

    Now you know. Plan accordingly."

Best regards,
Erik
