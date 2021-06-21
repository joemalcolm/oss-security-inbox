X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["523" "Monday" "21" "June" "2021" "08:37:01" "-0700" "Brennan Ashton" "btashton@apache.org" nil "18" "[oss-security] CVE-2021-26461: Apache NuttX (incubating): malloc, realloc and memalign implementations are vulnerable to integer wrap-arounds" nil nil nil "6" nil nil (number mark "U       btashton@apa Jun 21   18/523   " thread-indent "\"[oss-security] CVE-2021-26461: Apache NuttX (incubating): malloc, realloc and memalign implementations are vulnerable to integer wrap-arounds\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-26461: Apache NuttX (incubating): malloc, realloc and memalign implementations are vulnerable to integer wrap-arounds" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5891 invoked by uid 550); 21 Jun 2021 15:44:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3236 invoked from network); 21 Jun 2021 15:37:16 -0000
Message-ID: <262c7ab7f2cbc14ba3fe9deb29d173067918b289.camel@apache.org>
From: Brennan Ashton <btashton@apache.org>
To: oss-security@lists.openwall.com
Date: Mon, 21 Jun 2021 08:37:01 -0700
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.4 (3.38.4-1.fc33) 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE-2021-26461: Apache NuttX (incubating): malloc, realloc and
 memalign implementations are vulnerable to integer wrap-arounds

Description:

Apache Nuttx (incubating) versions prior to 10.1.0 are vulnerable to
integer wrap-around in functions malloc, realloc and memalign. This
improper memory assignment can lead to arbitrary memory allocation,
resulting in unexpected behavior such as a crash or a remote code
injection/execution. 

This issue is also known as BadAlloc

Credit:

Apache NuttX would like to thank Omri Ben-Bassat of Section 52 at Azure
Defender for IoT of Microsoft Corp for bringing this issue to our
attention.

--Brennan Ashton

