X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4490" "Friday" "16" "October" "2020" "09:55:45" "+1000" "Sam Fowler" "sfowler@redhat.com" "<d8d112fb-a588-d6d6-6b04-500fd1fe851e@redhat.com>" "132" "[oss-security] Kubernetes: Multiple secret leaks when verbose logging is enabled" nil nil nil "10" "2020101523:55:45" "[oss-security] Kubernetes: Multiple secret leaks when verbose logging is enabled" (number mark "U       sfowler@redh Oct 16  132/4490  " thread-indent "\"[oss-security] Kubernetes: Multiple secret leaks when verbose logging is enabled\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Kubernetes: Multiple secret leaks when verbose logging is enabled" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9670 invoked by uid 550); 16 Oct 2020 06:06:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15975 invoked from network); 15 Oct 2020 23:56:06 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1602806154;
	h=from:from:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type; bh=yXOPFQObcIm8kPxjCAhsNz4esZuAB1tXOVbaaMSPeAU=;
	b=Z64y13JIXJxg8RrrtRbTgkGv3xdxAH/+7hs8G0Xeaujjvw2aCG4Q6/36OU6dvbBurySr6G
	JnCBcXYgKfAmte8NAXkuWT3h1FCx/TjeyElU0GSSqZGAreawfbnYhjvma3/WE6BSdXLdb5
	QK5ybxD8X+wn0H5uq3aGkap8CGWVfuQ=
X-MC-Unique: UHohySzNNa2EWJ-_fYldMg-1
From: Sam Fowler <sfowler@redhat.com>
Organization: Red Hat
To: oss-security@lists.openwall.com
Message-ID: <d8d112fb-a588-d6d6-6b04-500fd1fe851e@redhat.com>
Date: Fri, 16 Oct 2020 09:55:45 +1000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=sfowler@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative;
 boundary="------------FA9740A9FFDC46D4DE3D9DBF"
Content-Language: en-US
Subject: [oss-security] Kubernetes: Multiple secret leaks when verbose logging is enabled

--------------FA9740A9FFDC46D4DE3D9DBF
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Hello,

Multiple security issues have been discovered in Kubernetes that allow 
for the exposure of secret data in logs, when verbose logging options 
are enabled. These issues have been rated Medium, with a CVSS of 4.7 
CVSS:3.0/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:N/A:N. CVE-2020-8563 has been 
rated slightly higher as the leaked credential allows for a scope change 
to the underlying cloud provider.

  * CVE-2020-8563: Secret leaks in logs for vSphere Provider
    kube-controller-manager
  * CVE-2020-8564: Docker config secrets leaked when file is malformed
    and loglevel >= 4
  * CVE-2020-8565: Incomplete fix for CVE-2019-11250 allows for token
    leak in logs when logLevel >= 9
  * CVE-2020-8566: Ceph RBD adminSecrets exposed in logs when loglevel >= 4


## Am I vulnerable?

  * CVE-2020-8563 - Vulnerable if using VSphere provider and
    kube-controller-manager is using logLevel >= 4
  * CVE-2020-8564 - Vulnerable if pull secrets are stored in a docker
    config file and loglevel >= 4. Also requires the docker config file
    to be malformed.
  * CVE-2020-8565 - Vulnerable if kube-apiserver is using logLevel >= 9
  * CVE-2020-8566 - Vulnerable if Ceph RBD volumes are supported and
    kube-controller-manager is using logLevel >= 4


### Affected Versions

CVE-2020-8563 only affects 1.19.0 -1.19.2. All other CVEs affect 1.19, 
1.18 and 1.17 releases and earlier.


### Fixed Versions

  *      CVE-2020-8563 - v1.19.3
  *      CVE-2020-8564 - v1.19.3, v1.18.10, v1.17.13
  *      CVE-2020-8565 - v1.20.0-alpha2
  *      CVE-2020-8566 - v1.19.3, v1.18.10, v1.17.13


### Fixes

  *      CVE-2020-8563 - https://github.com/kubernetes/kubernetes/pull/95236
  *      CVE-2020-8564 -
    https://github.com/kubernetes/kubernetes/pull/94712
  *      CVE-2020-8565 -
    https://github.com/kubernetes/kubernetes/pull/95316
  *      CVE-2020-8566 -
    https://github.com/kubernetes/kubernetes/pull/95245


## Impact

If sufficient verbose logging is enabled, the following secrets can be 
exposed in logs:

  *      CVE-2020-8563 - VSphere Cloud credentials
  *      CVE-2020-8564 - Pull secrets or other credentials in docker
    config file
  *      CVE-2020-8565 - Kubernetes authorization tokens (incl. bearer
    tokens and basic auth)
  *      CVE-2020-8566 - Ceph RBD Admin secrets


## How do I mitigate these vulnerabilities?

All four vulnerabilities are only exposed when verbose logging levels 
are enabled for the respective component, which is not done by default. 
These vulnerabilities can all therefore be mitigated by ensuring that 
the log level is below 4.

All four vulnerabilities can additionally be mitigated by preventing 
untrusted access to log files. An attacker can only recover the 
sensitive information exposed by these vulnerabilities if they can 
access the target logs.

If any exposed secrets are found in log files, it is recommended to 
rotate them as soon as possible. Exposure can occur in Kubernetes server 
side components, including kube-apiserver and kube-contoller-manager. 
Client tools using the affected code, like kubectl, can also log secret 
data.
Detection

Logs can be searched for any secret values that have already been 
exposed. The individual pull requests for each vulnerability contain 
details on the particular log entries that can include secret values.

For example, one can examine the kube-controller-manager logs for 
entries exposing Ceph RBD admin secrets:

$ kubectl logs -n kube-system kube-controller-manager | grep rbd | grep key

## Additional Details

Please refer to the individual pull issues for further details:

  *      CVE-2020-8563 -
    https://github.com/kubernetes/kubernetes/issues/95621
  *      CVE-2020-8564 -
    https://github.com/kubernetes/kubernetes/issues/95622
  *      CVE-2020-8565 -
    https://github.com/kubernetes/kubernetes/issues/95623
  *      CVE-2020-8566 -
    https://github.com/kubernetes/kubernetes/issues/95624


## Acknowledgements

  *      CVE-2020-8563 - Kaizhe Huang (derek0405)
  *      CVE-2020-8564 - Nikolaos Moraitis (Red Hat)
  *      CVE-2020-8565 - Patrick Rhomberg (purelyapplied)
  *      CVE-2020-8566 - Kaizhe Huang (derek0405)



Thank you,

Sam Fowler, on behalf of the Kubernetes Product Security Committee




--------------FA9740A9FFDC46D4DE3D9DBF--

