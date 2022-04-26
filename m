Received: (qmail 12061 invoked by uid 550); 26 Apr 2022 12:35:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18061 invoked from network); 26 Apr 2022 08:44:54 -0000
Content-Type: text/plain; charset=utf-8
From: Jan Lehnardt <jan@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <a388a13c-2f49-a36d-668a-633583013717@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 26 Apr 2022 08:44:41 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-24706: Apache CouchDB: Remote Code Execution
 Vulnerability in Packaging 

Severity: critical

Description:

An attacker can access an improperly secured default installation without
authenticating and gain admin privileges.

1. CouchDB opens a random network port, bound to all available interfaces
   in anticipation of clustered operation and/or runtime introspection. A
   utility process called `epmd` advertises that random port to the network.
   `epmd` itself listens on a fixed port.
2. CouchDB packaging previously chose a default `cookie` value for single-n=
ode
   as well as clustered installations. That cookie authenticates any
   communication between Erlang nodes.

The CouchDB documentation[1] has always made recommendations for properly
securing an installation, but not all users follow the advice.

We recommend a firewall in front of all CouchDB installations. The full
CouchDB api is available on registered port `5984` and this is the only
port that needs to be exposed for a single-node install. Installations
that do not expose the separate distribution port to external access are
not vulnerable.

[1]: https://docs.couchdb.org/en/stable/setup/cluster.html



Mitigation:

CouchDB 3.2.2 and onwards will refuse to start with the former default
Erlang cookie value of `monster`. Installations that upgrade to this
versions are forced to choose a different value.

In addition, all binary packages have been updated to bind `epmd` as
well as the CouchDB distribution port to `127.0.0.1` and/or `::1`
respectively.

Credit:

The Apache CouchDB Team would like to thank Alex Vandiver <alexmv@zulip.com=
> for the report of this issue.

References:

https://lists.apache.org/thread/w24wo0h8nlctfps65txvk0oc5hdcnv00

