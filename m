Received: (qmail 28605 invoked by uid 550); 12 Dec 2023 20:10:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28074 invoked from network); 12 Dec 2023 20:09:40 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Nick Vatamaniuc <vatamane@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <9112e483-7262-06ac-9211-2dbdca45c7e9@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 12 Dec 2023 20:09:47 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-45725: Apache CouchDB, IBM Cloudant: Privilege Escalation
 Using _design Documents 

Severity: moderate

Affected versions:

- Apache CouchDB through 3.3.2
- IBM Cloudant before 8413

Description:

Design document functions which receive a user http request object may expo=
se authorization or session cookie headers of the user who accesses the doc=
ument.

These design document functions are:
  *  =C2=A0 list
  *  =C2=A0 show
  *  =C2=A0 rewrite
  *  =C2=A0 update

An attacker can leak the session component using an HTML-like output, inser=
t the session as an external resource (such as an image), or store the cred=
ential in a _local document with an "update" function.

For the attack to succeed the attacker has to be able to insert the design =
documents into the database, then manipulate a user to access a function fr=
om that design document.

Workaround: Avoid using design documents from untrusted sources which may a=
ttempt to access or manipulate request object's headers

Credit:

Natan Nehorai from the JFrog Vulnerability Research Team (finder)
Or Peles from the JFrog Vulnerability Research Team (reporter)
Richard Ellis from IBM/Cloudant Team (finder)
Mike Rhodes from IBM/Cloudant Team (finder)

References:

https://docs.couchdb.org/en/stable/cve/2023-45725.html
https://couchdb.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-45725

