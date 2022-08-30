Received: (qmail 9299 invoked by uid 550); 30 Aug 2022 17:28:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29994 invoked from network); 30 Aug 2022 17:10:35 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Kirk Lund <klund@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <ce81839a-b84e-5741-af68-f06383d66022@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 30 Aug 2022 17:09:20 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-37023: Apache Geode deserialization of untrusted data
 flaw when using REST API on Java 8 or Java 11 

Severity: high - possible RCE

Description:

Apache Geode versions prior to 1.15.0 are vulnerable to a deserialization o=
f untrusted data flaw when using REST API on Java 8 or Java 11.

Any user wishing to protect against deserialization attacks involving REST =
APIs should upgrade to Apache Geode 1.15 and follow the documentation for d=
etails on enabling "validate-serializable-objects=3Dtrue" and specifying an=
y user classes that may be serialized/deserialized with "serializable-objec=
t-filter". Enabling "validate-serializable-objects" may impact performance.

Mitigation:

Disable affected services such as JMX over RMI or REST APIs unless they are=
 required. REST APIs can be disabled by setting `http-service-port` to zero.

