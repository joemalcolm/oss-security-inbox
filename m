Received: (qmail 19775 invoked by uid 550); 25 Dec 2024 03:30:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 23650 invoked from network); 24 Dec 2024 22:23:39 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: =?UTF-8?Q?Emmanuel_L=C3=A9charny?= <elecharny@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <4b45910d-5fea-a39b-71b6-c3a957a1bf62@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 24 Dec 2024 22:19:49 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-52046: Apache MINA: MINA applications using unbounded
 deserialization may allow RCE 

Affected versions:

- Apache MINA 2.0 through 2.0.26 unknown
- Apache MINA 2.1 through 2.1.9
- Apache MINA 2.2 through 2.2.3

Description:

The ObjectSerializationDecoder in Apache MINA uses Java=E2=80=99s native de=
serialization protocol to process
incoming serialized data but lacks the necessary security checks and defens=
es. This vulnerability allows
attackers to exploit the deserialization process by sending specially craft=
ed malicious serialized data,
potentially leading to remote code execution (RCE) attacks.



=09=09=09=09=09


=09=09=09=09


=09=09=09


=09=09


=09
This issue affects MINA core versions 2.0.X, 2.1.X and 2.2.X, and will be f=
ixed by the releases 2.0.27, 2.1.10 and 2.2.4.





It's also important to note that an application using MINA core library wil=
l only be affected if the IoBuffer#getObject() method is called, and this s=
pecific method is potentially called when adding a ProtocolCodecFilter inst=
ance using the ObjectSerializationCodecFactory class in the filter chain. I=
f your application is specifically using those classes, you have to upgrade=
 to the latest version of MINA core library.




Upgrading will=C2=A0 not be enough: you also need to explicitly allow the c=
lasses the decoder will accept in the ObjectSerializationDecoder instance, =
using one of the three new methods:




    /**

=C2=A0 =C2=A0=C2=A0 * Accept class names where the supplied ClassNameMatche=
r matches for

     * deserialization, unless they are otherwise rejected.

     *

     * @param classNameMatcher the matcher to use

     */

    public void accept(ClassNameMatcher classNameMatcher)




    /**

     * Accept class names that match the supplied pattern for

     * deserialization, unless they are otherwise rejected.

     *

     * @param pattern standard Java regexp

     */

    public void accept(Pattern pattern)=20





    /**

     * Accept the wildcard specified classes for deserialization,

     * unless they are otherwise rejected.

     *

     * @param patterns Wildcard file name patterns as defined by

     *                  {@link org.apache.commons.io.FilenameUtils#wildcard=
Match(String, String) FilenameUtils.wildcardMatch}

     */

    public void accept(String... patterns)







By default, the decoder will reject *all* classes that will be present in t=
he incoming data.







Note: The FtpServer, SSHd and Vysper sub-project are not affected by this i=
ssue.

References:

https://mina.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-52046

