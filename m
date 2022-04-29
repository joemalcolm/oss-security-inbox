Received: (qmail 22246 invoked by uid 550); 29 Apr 2022 20:43:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15546 invoked from network); 29 Apr 2022 20:29:48 -0000
Content-Type: text/plain; charset=utf-8
From: David Handermann <exceptionfactory@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <9032b118-519c-49f6-8782-eb97d02a9ca2@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 29 Apr 2022 20:28:54 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-29265: Apache NiFi: Improper Restriction of XML External
 Entity References in Multiple Components 

Severity: moderate

Description:

Multiple components in Apache NiFi 0.0.1 to 1.16.0 do not restrict XML Exte=
rnal Entity references in the default configuration.

The Standard Content Viewer service attempts to resolve XML External Entity=
 references when viewing formatted XML files.

The following Processors attempt to resolve XML External Entity references =
when configured with default property values:

- EvaluateXPath
- EvaluateXQuery
- ValidateXml

Apache NiFi flow configurations that include these Processors are vulnerabl=
e to malicious XML documents that contain Document Type Declarations with X=
ML External Entity references.

The resolution disables Document Type Declarations in the default configura=
tion for these Processors, and disallows XML External Entity resolution in =
standard services.

This issue is being tracked as NIFI-9901

Mitigation:

Disabling the Validate DTD Processor Property in EvaluateXPath and Evaluate=
XQuery mitigates the vulnerability for those Processors. No mitigation is a=
vailable for the ValidateXml Processor or the Standard Content Viewer.

Credit:

David Handermann at exceptionfactory.com reported this issue.

References:

https://nifi.apache.org/security.html#CVE-2022-29265


