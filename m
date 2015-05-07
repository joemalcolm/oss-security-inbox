X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["627" "Thursday" "7" "May" "2015" "13:58:27" "+0200" "Martin Prpic" "mprpic@redhat.com" "<87k2wkfvks.fsf@redhat.com>" "18" "[oss-security] CVE request: vulnerability in wpa_supplicant and hostapd" nil nil nil "5" "2015050711:58:27" "[oss-security] CVE request: vulnerability in wpa_supplicant and hostapd" (number mark "        mprpic@redha May  7   18/627   " thread-indent "\"[oss-security] CVE request: vulnerability in wpa_supplicant and hostapd\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28433 invoked by uid 550); 7 May 2015 11:58:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28415 invoked from network); 7 May 2015 11:58:43 -0000
User-agent: mu4e 0.9.9.5; emacs 24.3.1
Message-ID: <87k2wkfvks.fsf@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.23
Date: Thu, 07 May 2015 13:58:27 +0200
From: Martin Prpic <mprpic@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request: vulnerability in wpa_supplicant and hostapd
To: "OSS Security Mailinglist" <oss-security@lists.openwall.com>

Hi, I don't see a CVE assigned for this anywhere:

http://w1.fi/security/2015-4/eap-pwd-missing-payload-length-validation.txt

"EAP-pwd missing payload length validation

A vulnerability was found in EAP-pwd server and peer implementation used
in hostapd and wpa_supplicant, respectively. The EAP-pwd/Commit and
EAP-pwd/Confirm message payload is processed without verifying that the
received frame is long enough to include all the fields. This results in
buffer read overflow of up to couple of hundred bytes."

Patches are included in: http://w1.fi/security/2015-4/

Thank you!

-- 
Martin Prpič / Red Hat Product Security
