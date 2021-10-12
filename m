X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["297" "Tuesday" "12" "October" "2021" "00:29:24" "+0000" "Eric Friedrich" "friede@apache.org" nil "7" "[oss-security] CVE-2021-42009: Apache Traffic Control Arbitrary Email Content Insertion in /deliveryservices/request " nil nil nil "10" nil nil (number mark "U       friede@apach Oct 12    7/297   " thread-indent "\"[oss-security] CVE-2021-42009: Apache Traffic Control Arbitrary Email Content Insertion in /deliveryservices/request \"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-42009: Apache Traffic Control Arbitrary Email Content Insertion in /deliveryservices/request " nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18231 invoked by uid 550); 12 Oct 2021 11:02:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7860 invoked from network); 12 Oct 2021 00:29:38 -0000
Content-Type: text/plain; charset=utf-8
From: Eric Friedrich <friede@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <2fc32b22-64ac-3761-6e7d-e07cb0799f11@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 12 Oct 2021 00:29:24 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2021-42009: Apache Traffic Control Arbitrary Email Content
 Insertion in /deliveryservices/request 

Description:

An authenticated Traffic Ops user with Portal-level privileges can send a r=
equest with a specially-crafted email subject to the /deliveryservices/requ=
est Traffic Ops endpoint to send an email, from the Traffic Ops server, wit=
h an arbitrary body to an arbitrary email address.

