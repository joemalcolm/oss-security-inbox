X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["12117" "Monday" "15" "March" "2021" "22:27:32" "-0400" "Phil Pennock" "oss-security-phil@spodhuis.org" nil "384" "[oss-security] [CVE-2020-28466][CVE-2021-3127] NATS.io vulnerabilities" nil nil nil "3" nil nil (number mark "U       oss-security Mar 15  384/12117 " thread-indent "\"[oss-security] [CVE-2020-28466][CVE-2021-3127] NATS.io vulnerabilities\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2020-28466][CVE-2021-3127] NATS.io vulnerabilities" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30439 invoked by uid 550); 16 Mar 2021 11:27:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26280 invoked from network); 16 Mar 2021 02:27:47 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=spodhuis.org; s=d202102; h=Content-Type:MIME-Version:Reply-To:Message-ID:
	Subject:Cc:To:From:Date:From:Reply-To:Subject:Date:To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:In-Reply-To:
	References:OpenPGP:Organization;
	bh=HLxxGZI97bHPr+AZOFaHproVRYBEXIiSDDYwap5IoK8=; t=1615861667; x=1617071267;
	 b=tQeY5KZUzH8IfgJ2cItcMdF9OmzpoDwpZW0dmSCStVAH+reEcwM+DqR7mkEAUJvvRr6NTKBccT
	Rr2eKDokX0dRplUFq9VNzJqvlwWYmJ/oRa3YWR09zqyAiE9RokEc1d1NI1IBB0hZXMpJ5JAZjG+G5
	OpFTUgHZzZcAljAxTC3wuLlThqWv62gbOGGLbS7T9Va7GC4R83eknKDj5VozGpMsDyLXbrWcYFYmD
	IBqXT+f0za44PFevq9N1/BEqhbhztvGD4bd7ysR8aFixOXJIa1a5yqEXWXMEt19lkNedAehBLobfN
	kgMABd81QDMz8l3izJMFRdhcsvupG3Grar1DQ==;
DKIM-Signature: v=1; a=ed25519-sha256; q=dns/txt; c=relaxed/relaxed;
	d=spodhuis.org; s=d202102e2; h=Content-Type:MIME-Version:Reply-To:Message-ID:
	Subject:Cc:To:From:Date:From:Reply-To:Subject:Date:To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:In-Reply-To:
	References:OpenPGP:Organization;
	bh=HLxxGZI97bHPr+AZOFaHproVRYBEXIiSDDYwap5IoK8=; t=1615861667; x=1617071267;
	 b=eNDPBRv8VaQ14XfvhCZQxIYT5iPZk6aPYVYCo4ULjb618K7Cop9F/3OEQy/482eYXymkZB1aPS
	QfwDd81gg2DQ==;
Date: Mon, 15 Mar 2021 22:27:32 -0400
From: Phil Pennock <oss-security-phil@spodhuis.org>
To: oss-security@lists.openwall.com
Cc: Phil Pennock <pdp@synadia.com>
Message-ID: <YFAXlFS+y63uKlto@fullerene.field.pennock-tech.net>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="Vum6MGQQCiISTZ/Z"
Content-Disposition: inline
Subject: [oss-security] [CVE-2020-28466][CVE-2021-3127] NATS.io vulnerabilities

--Vum6MGQQCiISTZ/Z
Content-Type: multipart/mixed; boundary="WhZD7HyTVuO86fyi"
Content-Disposition: inline


--WhZD7HyTVuO86fyi
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

[moderators: my apologies for the initial unsigned message, please
 discard that one and permit this one]

Folks,

Two new CVEs for the NATS project for issues fixed with the
2.2.0 release.  The full text of the advisories should be attached.
These, and other advisories, can be found at
<https://advisories.nats.io/>.

 * CVE-2020-28466
   + import loops between accounts, expressed in the account JWT, could
     DoS the server
   + this was fixed in public git some time ago without initially
     thinking of the security impact, this was the first
     release since then
   + realistically, the current situation is that if you have untrusted
     third parties with control over their account JWTs, then while
     we'll hurry security releases for severe flaws (compromise,
     disclosure), for DoS protection folks need to follow closer to git
     mainline

 * CVE-2021-3127
   + this one is far more serious: information disclosure between
     accounts
   + something which should have been an error was a disregarded
     warning, letting people reuse binding tokens to bypass access
     controls on data exports from an account because the binding was
     not enforced
   + the bug is in the JWT library, the current NATS server has the fix
     in as as a dependency; the advisory includes a Python script which
     can be pointed at your account server's account pack URL, or a pack
     on local disk, to audit all the accounts to find instances of
     someone exploiting this

Regards,
-Phil Pennock

--WhZD7HyTVuO86fyi
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline; filename="CVE-2020-28466.txt"
Content-Transfer-Encoding: quoted-printable

Subject: Import loops in account imports, nats-server DoS

CVE: CVE-2020-28466

Background:

NATS.io is a high performance open source pub-sub distributed
communication technology, built for the cloud, on-premise, IoT, and edge
computing.  The server is written in Go and there are client libraries
in many languages and frameworks.

The NATS account system allows accounts to import services exported from
other accounts.


Problem Description:

An export/import cycle between accounts could crash the nats-server,
after consuming CPU and memory.

This issue was fixed publicly in
<https://github.com/nats-io/nats-server/pull/1731> in November 2020.

The need to call this out as a security issue was highlighted by snyk.io
and we are grateful for their assistance in doing so.

Organizations which run a NATS service providing access to accounts run
by untrusted third parties are affected.
See below for an important caveat if running such a service.


Affected versions:

NATS Server:
 * Version 2 prior to 2.2.0
   + 2.0.0 through and including 2.1.9 are vulnerable.
 * fixed with nats-io/nats-server PR 1731, commit 2e3c226729


Impact:

The nats-server could be killed, after consuming resources.


Workaround:

The import cycle requires at least two accounts to work; if you have
open account sign-up, then restricting new account sign-up might hinder
an attacker.


Solution:

Upgrade the nats-server.


Caveat on NATS with untrusted users:

Running a NATS service which is exposed to untrusted users presents a
heightened risk.

Any remote execution flaw or equivalent seriousness, or
denial-of-service by unauthenticated users, will lead to prompt releases
by the NATS maintainers.

Fixes for denial of service issues with no threat of remote execution,
when limited to account holders, are likely to just be committed to the
main development branch with no special attention.

Those who are running such services are encouraged to build regularly
from git.

--WhZD7HyTVuO86fyi
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline; filename="CVE-2021-3127.txt"
Content-Transfer-Encoding: quoted-printable

Subject: Import token permissions checking not enforced

CVE: CVE-2021-3127

Background:

NATS.io is a high performance open source pub-sub distributed communication
technology, built for the cloud, on-premise, IoT, and edge computing.
The server is written in Go and there are client libraries in many languages
and frameworks.

The nats-io JWT library provides the handling for JWTs common to the NATS.io
projects.


Problem Description:

The NATS server provides for Subjects which are namespaced by Account;
all Subjects are supposed to be private to an account, with an
Export/Import system used to grant cross-account access to some
Subjects.  Some Exports are public, such that anyone can import the
relevant subjects, and some Exports are private, such that the Import
requires a token JWT to prove permission.

The JWT library's validation of the bindings in the Import Token
incorrectly warned on mismatches, instead of outright rejecting the
token.

As a result, any account can take an Import token used by any other
account and re-use it for themselves because the binding to the
importing account is not rejected, and use it to import *any* Subject
from the Exporting account, not just the Subject referenced in the
Import Token.

The NATS account-server system treats account JWTs as semi-public
information, such that an attacker can easily enumerate all account JWTs
and retrieve all Import Tokens from those account JWTs.

The CVE identifier should cover the JWT library repair and the
nats-server containing the fixed JWT library, and any other application
depending upon the fixed JWT library.


Affected versions:

JWT library:
 * all versions prior to 2.0.1
 * fixed after nats-io/jwt PR 149 landed (2021-03-14)

NATS Server:
 * Version 2 prior to 2.2.0
   + 2.0.0 through and including 2.1.9 are vulnerable
 * fixed with nats-io/nats-server commit 423b79440c (2021-03-14)


Impact:

In deployments with untrusted accounts able to update the Account Server
with imports, a malicious account can access any Subject from an account
which provides Exported Subjects.

Abuse of this facility requires the malicious actor to upload their
tampered Account JWT to the Account Server, providing the service
operator with a data-store which can be scanned for signs of abuse.


Workaround:

Deny access to clients to update their account JWT in the account
server.


Solution:

Upgrade the JWT dependency in any application using it.

Upgrade the NATS server if using NATS Accounts (with private Exports;
Account owners can create those at any time though).

Audit all accounts JWTs to scan for exploit attempts.

---------------------------8< jwt-audit.py >8---------------------------
#!/usr/bin/env python3

"""jwt-audit: audit a packfile of JWTs for security issues.

See CVE-2021-3127 for more details.
"""

import argparse
import base64
import json
import os
import pathlib
import sys

from dataclasses import dataclass

import requests

SCRIPT_DIR =3D pathlib.Path(__file__).absolute().parent


class Error(Exception):
    """Base class for exceptions from audit."""
    pass


class Exit(Exception):
    """Base class for exceptions which exit without a stack trace."""
    pass


@dataclass
class ReadAccount:
    lineno1: int
    account_id: str
    b64_jwt: str


class AuditAccount:
    def __init__(self, read_account):
        self.read_account =3D read_account
        self.acct =3D self.read_account.account_id
        self.problem_count =3D 0

    def report(self, message):
        print('{}: {}'.format(self.acct, message), file=3Dsys.stderr)
        self.problem_count +=3D 1

    def b64_json_decode(self, raw):
        decode =3D raw + '=3D' * (4 - len(raw) % 4)
        return json.loads(base64.urlsafe_b64decode(decode))

    def payload_from_jwt(self, raw):
        return self.b64_json_decode(raw.split('.', 2)[1])

    def populate(self):
        self.jwt =3D self.payload_from_jwt(self.read_account.b64_jwt)

    def audit(self):
        self.populate()
        if self.jwt["sub"] !=3D self.acct:
            self.report(f'account does not match JWT subject {self.jwt["sub=
"]}')
        if 'nats' not in self.jwt:
            self.report(f'JWT missing "nats" top-level key')
            return
        if 'imports' not in self.jwt['nats']:
            return
        for impIndex0, Import in enumerate(self.jwt['nats']['imports']):
            if 'token' not in Import:
                continue
            index =3D impIndex0 + 1
            token =3D self.payload_from_jwt(Import['token'])
            if token["type"] !=3D 'activation':
                self.report(f'import {index}: non-activation token {token["=
type"]!r}')
                continue
            if token["nats"]["type"] =3D=3D 'stream':
                # we don't audit these
                continue
            if token["nats"]["type"] !=3D 'service':
                self.report(f'import {index}: import not of type service bu=
t is {token["nats"]["type"]!r}')
            if token["iss"] !=3D Import["account"]:
                self.report(f'import {index}: issuer {token["iss"]!r} !=3D =
import-from account {Import["account"]!r}')
            if token["nats"]["subject"] !=3D Import["to"]:
                self.report(f'import {index}: ABUSE: token grants {token["n=
ats"]["subject"]!r} but used to access {Import["to"]!r}')


class AccountCollection:
    def __init__(self, *, options):
        self.options =3D options
        if options.file:
            self.data_reader =3D self.from_file(options.file)
        elif options.url:
            self.data_reader =3D self.from_url(options.url)
        else:
            raise Error('code bug: unhandled origin for AccountCollection')

    def from_file(self, filename):
        yield from self.from_opener(repr(filename), open(filename))

    def from_url(self, url):
        response =3D requests.get(url, stream=3DTrue)
        iterator =3D [line.decode(response.encoding) for line in response.i=
ter_lines()]
        yield from self.from_opener('<'+url+'>', iterator)

    def from_opener(self, label, opened):
        for lineno0, line in enumerate(opened):
            try:
                line =3D line.strip()
                if not line:
                    continue
                acct, jwt =3D line.split('|', 1)
                yield ReadAccount(lineno0+1, acct, jwt)
            except ValueError as e:
                l =3D lineno0 + 1
                print(f'warning: {label} line {l}: {e}', file=3Dsys.stderr)

    def audit(self):
        for index, ra in enumerate(self.data_reader):
            AuditAccount(ra).audit()


def _main(args, argv0):
    parser =3D argparse.ArgumentParser(
        description=3D__doc__,
        formatter_class=3Dargparse.RawDescriptionHelpFormatter)
    origin =3D parser.add_mutually_exclusive_group(required=3DTrue)
    origin.add_argument('-f', '--file',
                        help=3D'Audit a pack-file of JWTs')
    origin.add_argument('--url',
                        help=3D'Pull packfile of accounts from given URL')
    parser.add_argument('-v', '--verbose',
                        action=3D'count', default=3D0,
                        help=3D'Be more verbose')
    options =3D parser.parse_args(args=3Dargs)

    accounts =3D AccountCollection(options=3Doptions)

    accounts.audit()


if __name__ =3D=3D '__main__':
    argv0 =3D pathlib.Path(sys.argv[0]).name
    if argv0.endswith('.py'):
        argv0 =3D argv0[:-3]
    try:
        rv =3D _main(sys.argv[1:], argv0=3Dargv0)
    except Exit as e:
        for arg in e.args:
            print('{}: {}'.format(argv0, arg), file=3Dsys.stderr)
        sys.exit(1)
    sys.exit(rv)
---------------------------8< jwt-audit.py >8---------------------------

--WhZD7HyTVuO86fyi--

--Vum6MGQQCiISTZ/Z
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQSpb2i1s4FmGYGL+VvhPiXtYNF+awUCYFAXigAKCRDhPiXtYNF+
az//AQD8Rfx3y1TegBAsxgt8agwiqHcjhRnYuSjzPJ6YsleSAgEA4t8bUQBygo+0
dR5Ln6jy9VVow0HNB20v+CeG4ZAeZgI=
=x7cL
-----END PGP SIGNATURE-----

--Vum6MGQQCiISTZ/Z--
