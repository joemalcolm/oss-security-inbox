X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1229" "Monday" "31" "January" "2022" "09:34:53" "+0100" "Maurits van Rees" "maurits@vanrees.org" nil "37" "[oss-security] Plone: cache poisoning in image_view_fullscreen" nil nil nil "1" nil nil (number mark "U       maurits@vanr Jan 31   37/1229  " thread-indent "\"[oss-security] Plone: cache poisoning in image_view_fullscreen\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Plone: cache poisoning in image_view_fullscreen" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17504 invoked by uid 550); 31 Jan 2022 09:50:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23777 invoked from network); 31 Jan 2022 08:35:12 -0000
X-Virus-Scanned: amavisd-new at heinlein-support.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vanrees.org; s=MBO0001;
	t=1643618098;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=RX009V6YUo54DSliuMM9ihiHKrgH9kyEdMBJZats5Ew=;
	b=nuJZYv6mE+2cEfB4BTHJE9Y0D9kqU7TwpYjqR7cFR5wkLtX5Kkg8lz96UkkFYv8SQNRgHM
	owLEb288YGcTt/qxyVQbnpJqixg6jto5uzi3a6ty7RY42GtTdiR1f7n71/dGQzjcxn9r56
	fLEyUCSua0F9aHLNPr/91oNBsDLfL5tMmi5VYGx0COSfRtcMRjbn5UkcCsfSqbTKSsq48e
	IOkXtx2MImhiThs2Rc0D1RhDxOK1MVPrPCRlDQwGxU6NRRcltSYimeaK/XzrqmuqdHDA85
	aBLbtxks0RbeKdb4dMcUJjsayKUE1SPvIsFsUylRqmbtbPeY4up8FGB67pS7KA==
Message-ID: <74cef8b2-e764-5644-0062-5cdad687bd6b@vanrees.org>
Date: Mon, 31 Jan 2022 09:34:53 +0100
MIME-Version: 1.0
Content-Language: en-US
To: oss-security@lists.openwall.com
From: Maurits van Rees <maurits@vanrees.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] Plone: cache poisoning in image_view_fullscreen

Plone is vulnerable to reflected cross site scripting and open redirect 
when an attacker can get a compromised version of the 
image_view_fullscreen page in a cache, for example in Varnish.
The technique is known as cache poisoning.
Any later visitor can get redirected when clicking on a link on this page.
Usually only anonymous users are affected, but this depends on your 
cache settings.

Versions Affected: All supported Plone versions (4.3.20 and any earlier 
4.3.x version, 5.2.6 and any earlier 5.x version, 6.0.0a2 and any 
earlier 6.0.0 version).

There are updated packages for Plone 5.2:

plone.app.contenttypes 2.2.3
Products.ATContentTypes 3.0.6

And updated packages for 6.0 (which is in alpha):

plone.app.contenttypes 3.0.0a9

With the default version pins, new Plone 5.2.7 and 6.0.0a3 are not 
affected. Earlier versions are.

CVE number: CVE-2022-23599.

More information:

- GitHub: 
https://github.com/plone/Products.CMFPlone/security/advisories/GHSA-8w54-22w9-3g8f
- community.plone.org: 
https://community.plone.org/t/security-fix-for-image-view-fullscreen-cache-poisoning/14757?u=mauritsvanrees
- plone.org: https://plone.org/security/hotfix/20220128

-- 
Maurits van Rees https://maurits.vanrees.org/

