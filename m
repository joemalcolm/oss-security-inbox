Received: (qmail 7197 invoked by uid 550); 5 Apr 2024 17:51:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 6134 invoked from network); 5 Apr 2024 17:51:46 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=netmeister.org;
	s=2024; t=1712339496;
	bh=M9kHbDRuhE0CLVrie/9kNM+sCHN9/ov0bv9ieBcmeYk=;
	h=From:To:Subject:Content-Type:From:To:Subject;
	b=ozYTkDoMDZdt+06pIbRn0uMEChT1rQ2XDprjtHMd1YKMzLvE7NnyI1fjtqbiMdx16
	 +A38uoDVMkv7/vcnakd7a8QmYAUblTu1f7uKVFrPxpUzKiaOJXetr9iLNLCURfO9I2
	 Wj/8oFXIJSeeJFTH4q1+KcuEn6jy1+jV3Y8dusMU=
Date: Fri, 5 Apr 2024 13:51:36 -0400
From: Jan Schaumann <jschauma@netmeister.org>
To: oss-security@lists.openwall.com
Message-ID: <ZhA6KNc0yadT0fWL@netmeister.org>
References: <5afad6dc-911e-4a76-a9fd-e166b9fde5f8@oracle.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5afad6dc-911e-4a76-a9fd-e166b9fde5f8@oracle.com>
Subject: [oss-security] Envoy security releases [1.29.3, 1.28.2, 1.27.4, 1.26.8] are now
 available

[ threading under VU#421644; I'm not affiliated with
  Envoy, but happen to track this vulnerability ]

https://groups.google.com/g/envoy-security-announce/c/5XgxqT2lDg8

| We would like to announce the release of the following
| patch versions:
| 
| - 1.29.3
| - 1.28.2
| - 1.27.4
| - 1.26.8
| 
| These releases resolve
| [CVE-2024-30255](https://github.com/envoyproxy/envoy/security/advisories/GHSA-j654-3ccm-vfmm)
| 
| We would also like to disclose that versions 1.29.0
| and 1.29.1 were also
| vulnerable to the more severe
| [CVE-2024-27919](https://github.com/envoyproxy/envoy/security/advisories/GHSA-gghf-vfxp-799r)
| 
| You are encouraged to update your versions of Envoy.
| 
| Further information about the releases can be found on
| the Envoy releases page:
| 
| https://github.com/envoyproxy/envoy/releases

-Jan
