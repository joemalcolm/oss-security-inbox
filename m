X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1046" "Thursday" "14" "July" "2016" "11:44:33" "+0530" "Huzaifa Sidhpurwala" "huzaifas@redhat.com" "<30653c2b-5754-e3a1-94d4-9ead3e9ca65b@redhat.com>" "31" "[oss-security] CVE Requests: HarfBuzz - Chromium CVE issues" nil nil nil "7" "2016071406:14:33" "[oss-security] CVE Requests: HarfBuzz - Chromium CVE issues" (number mark "U       huzaifas@red Jul 14   31/1046  " thread-indent "\"[oss-security] CVE Requests: HarfBuzz - Chromium CVE issues\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 10189 invoked by uid 550); 14 Jul 2016 06:14:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 10170 invoked from network); 14 Jul 2016 06:14:48 -0000
To: oss-security@lists.openwall.com,
        Mitre CVE assign department <cve-assign@mitre.org>
From: Huzaifa Sidhpurwala <huzaifas@redhat.com>
Message-ID: <30653c2b-5754-e3a1-94d4-9ead3e9ca65b@redhat.com>
Date: Thu, 14 Jul 2016 11:44:33 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.26
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.28]); Thu, 14 Jul 2016 06:14:36 +0000 (UTC)
Subject: [oss-security] CVE Requests: HarfBuzz - Chromium CVE issues

Hello,

Google released a chromium advisory[0], in which a bunch of harfbuzz
issues were mentioned. However only one CVE was assigned to multiple
issues as per https://bugs.chromium.org/p/chromium/issues/detail?id=544270


Looking a bit into the attached bug and going a few links down, i
realized that there are atleast 3 issues in here which are CVE worthy.
Details as follows:

1. Heap based buffer overflow:
https://github.com/behdad/harfbuzz/issues/139#issuecomment-146984679

2. Fix hmtx wrong table length check:
https://github.com/behdad/harfbuzz/issues/139#issuecomment-148289957

3. heap-buffer-overflow in hb_ot_face_metrics_accelerator_t::get_advance
https://github.com/behdad/harfbuzz/issues/156

Can MITRE please assign CVEs to these issues?

Also, assuming we still have a policy of one issue one CVE, how does
MITRE plan to handle vendors who assign one CVE to multiple non-related
issues?


[0]
http://googlechromereleases.blogspot.in/2016/01/stable-channel-update_20.html
-- 
Huzaifa Sidhpurwala / Red Hat Product Security Team
