X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1972" "Monday" "2" "January" "2017" "17:43:13" "+0100" "Cedric Buissart" "cbuissar@redhat.com" "<CAKG8Do7hHuzE3=LZv59pv50F5r_1auxPtq+6e0+LbO9tMH_V=w@mail.gmail.com>" "66" "[oss-security] freeIPA CVEs CVE-2016-9575 (insufficient permission check) & CVE-2016-7030 (DoS)" nil nil nil "1" "2017010216:43:13" "[oss-security] freeIPA CVEs CVE-2016-9575 (insufficient permission check) & CVE-2016-7030 (DoS)" (number mark "U       cbuissar@red Jan  2   66/1972  " thread-indent "\"[oss-security] freeIPA CVEs CVE-2016-9575 (insufficient permission check) & CVE-2016-7030 (DoS)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28461 invoked by uid 550); 2 Jan 2017 16:43:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28434 invoked from network); 2 Jan 2017 16:43:46 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=6uuT+MIAVQrzzpZxZxsjGlDquTsgl32bNPXJJY0YhDY=;
        b=pmwB1fHV/yjA8v2YqPkBA2Sume3gXdZolBnZl13y0kQ4i4DmGpylkD97Szy4ck8toB
         9OkVIDBx2QwDvd4rHiRYjxcRvIecVsa0DBG0HkIK/iaYHbqwt4j8Dq15Wlm8wn45EW0D
         nDqtvBDNYx1MY/MhwXN0sLLvZJCZgnXS69YTXefXDqisiGQc6SzeDDCedD7Cx84sXb7F
         VSifFvu5ru2VheVRrGun0pRxbjtP6wp/VqK8UHPTzoaEkCGEYlC1HM36oRNIvybqPoph
         OPCl7KQhmSDcl/tSxjytV1SdYwaJUgG7Onwu+IVuJ9jbVHaKcl+yTVN4MKOdY99YI9ii
         KrOg==
X-Gm-Message-State: AIkVDXKBJFcUw1EpQwwboeq+7rdcI3b5SIoHePomsUaohOQTX80T6JMUzzTOYNB1rc8h/QUiE8Rtp/6zBSdtUepp
X-Received: by 10.107.18.193 with SMTP id 62mr53760880ios.155.1483375414299;
 Mon, 02 Jan 2017 08:43:34 -0800 (PST)
MIME-Version: 1.0
From: Cedric Buissart <cbuissar@redhat.com>
Date: Mon, 2 Jan 2017 17:43:13 +0100
Message-ID: <CAKG8Do7hHuzE3=LZv59pv50F5r_1auxPtq+6e0+LbO9tMH_V=w@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=001a113f581aa364e605451f40df
Subject: [oss-security] freeIPA CVEs CVE-2016-9575 (insufficient permission check) &
 CVE-2016-7030 (DoS)

--001a113f581aa364e605451f40df
Content-Type: text/plain; charset=UTF-8

Hi,

This is to disclose the following 2 freeIPA CVEs.

1) CVE-2016-9575: Insufficient permission check in certprofile-mod

Due to a missing permission check, certprofile-mod can be used by an
authenticated but unprivileged user to modify certificate profile
configuration. This could allow the issuance of certificates with
fraudulent
subject naming information (allowing the holder of the private key to
impersonate another entity), or inappropriate key usage or extended key
usage
information (use of certificate for unauthorised purposes e.g. code
signing).

Upstream patch :
https://git.fedorahosted.org/cgit/freeipa.git/commit/?id=fec4c32ff15

Note: on older freeipa versions (4.3 & 4.2), path to affected file differs

Impact: moderate
CVSS3 scoring : 6.3 - AV:N/AC:L/PR:L/UI:N/S:U/C:L/I:L/A:L
Reported by: Liam Campbell (Red Hat)
Affected versions: all versions supporting certificate profiles are
affected:
4.2 and above.


2) CVE-2016-7030 : DoS attack against kerberized services by abusing
password
policy

FreeIPA contains MIT KDC as its main component + FreeIPA is using custom
database driver for the KDC. As a side-effect of implementation, FreeIPA is
enforcing password policies for all principals, including services which do
not use "password" but keytab with randomly-generated/strong key.

Default password policy locks an account after 5 unsuccessful
authentication
attempts for 10 minutes. An attacker can use this to simply lock-out any
principal, including system services.

Upstream patch :
https://git.fedorahosted.org/cgit/freeipa.git/commit/?id=6f1d92746

Additional dependency :
https://git.fedorahosted.org/cgit/freeipa.git/commit/?id=73f33569c

Impact: moderate
CVSS3 scoring : 7.5 - AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:H
Affected versions: all

Reported by: Petr Spacek (Red Hat)

Best Regards,


-- 
Cedric Buissart,
Product Security

--001a113f581aa364e605451f40df--
