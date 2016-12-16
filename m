X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["10467" "Friday" "16" "December" "2016" "19:01:54" "+0100" "Florent Rougon" "f.rougon@free.fr" "<8737hn92i5.fsf@frougon.crabdance.com>" "292" "[oss-security] Re: CVE Request: FlightGear: Allows the route manager to overwrite arbitrary files" nil nil nil "12" "2016121618:01:54" "[oss-security] Re: CVE Request: FlightGear: Allows the route manager to overwrite arbitrary files" (number mark "U       f.rougon@fre Dec 16  292/10467 " thread-indent "\"[oss-security] Re: CVE Request: FlightGear: Allows the route manager to overwrite arbitrary files\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30689 invoked by uid 550); 16 Dec 2016 18:03:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30459 invoked from network); 16 Dec 2016 18:02:16 -0000
From: Florent Rougon <f.rougon@free.fr>
To: oss-security@lists.openwall.com
Date: Fri, 16 Dec 2016 19:01:54 +0100
Message-ID: <8737hn92i5.fsf@frougon.crabdance.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="==-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"
Subject: [oss-security] Re: CVE Request: FlightGear: Allows the route manager to overwrite arbitrary files

--==-=-=
Content-Type: multipart/mixed; boundary="=-=-="

--=-=-=
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

[ This is in reply to Salvatore Bonaccorso's mail from Wed, 14 Dec 2016
  16:57:11 +0100, i.e.
  <http://www.openwall.com/lists/oss-security/2016/12/14/11>,
  unfortunately I don't have its Message-ID to reply in the same thread
  (just subscribed a few hours ago). ]

Hello,

As already written in private to Salvatore and maintainers of a few
distributions, it is quite unclear to me how to achieve arbitrary code
execution using this vulnerability. The reason I'm saying this is that
the bug allows an attacker to choose which user-writable files he wants
to overwrite, but *not their contents*, at least not freely at all. The
actual writing is not done by Nasal code but by the Route manager's C++
code, which doesn't seem to give much freedom as to the contents being
written (Nasal code can only *trigger* the flightplan writing).

Here is how the flightplan is saved
(flightgear/src/Autopilot/route_mgr.cxx, code from FlightGear's 'next'
branch):

  bool FGRouteMgr::saveRoute(const SGPath& p)
  {
    if (!_plan) {
      return false;
    }

    return _plan->save(p);
  }

calling (flightgear/src/Navaids/FlightPlan.cxx):

  bool FlightPlan::save(const SGPath& path)
  {
    SG_LOG(SG_NAVAID, SG_INFO, "Saving route to " << path);
    try {
      SGPropertyNode_ptr d(new SGPropertyNode);
      d->setIntValue("version", 2);

      if (_departure) {
        d->setStringValue("departure/airport", _departure->ident());
        if (_sid) {
          d->setStringValue("departure/sid", _sid->ident());
        }

        if (_departureRunway) {
          d->setStringValue("departure/runway", _departureRunway->ident());
        }
      }

      if (_destination) {
        d->setStringValue("destination/airport", _destination->ident());
        if (_star) {
          d->setStringValue("destination/star", _star->ident());
        }

        if (_approach) {
          d->setStringValue("destination/approach", _approach->ident());
        }

        //d->setStringValue("destination/transition", destination->getStrin=
gValue("transition"));

        if (_destinationRunway) {
          d->setStringValue("destination/runway", _destinationRunway->ident=
());
        }
      }

      // route nodes
      SGPropertyNode* routeNode =3D d->getChild("route", 0, true);
      for (unsigned int i=3D0; i<_legs.size(); ++i) {
        Waypt* wpt =3D _legs[i]->waypoint();
        wpt->saveAsNode(routeNode->getChild("wp", i, true));
      } // of waypoint iteration
      writeProperties(path, d, true /* write-all */);
      return true;
    } catch (sg_exception& e) {
      SG_LOG(SG_NAVAID, SG_ALERT, "Failed to save flight-plan '" << path <<=
 "'. " << e.getMessage());
      return false;
  }

calling [1] and [2] with:

[1] (flightgear/src/Navaids/route.cxx):

  void Waypt::saveAsNode(SGPropertyNode* n) const
  {
    n->setStringValue("type", type());
    writeToProperties(n);
  }

calling (flightgear/src/Navaids/route.cxx):

  void Waypt::writeToProperties(SGPropertyNode_ptr aProp) const
  {
    if (flag(WPT_OVERFLIGHT)) {
      aProp->setBoolValue("overflight", true);
    }

    if (flag(WPT_DEPARTURE)) {
      aProp->setBoolValue("departure", true);
    }

    if (flag(WPT_ARRIVAL)) {
      aProp->setBoolValue("arrival", true);
    }

    if (flag(WPT_APPROACH)) {
      aProp->setBoolValue("approach", true);
    }

    if (flag(WPT_MISS)) {
      aProp->setBoolValue("miss", true);
    }

    if (flag(WPT_GENERATED)) {
      aProp->setBoolValue("generated", true);
    }

    if (_altRestrict !=3D RESTRICT_NONE) {
      aProp->setStringValue("alt-restrict", restrictionToString(_altRestric=
t));
      aProp->setDoubleValue("altitude-ft", _altitudeFt);
    }

    if (_speedRestrict !=3D RESTRICT_NONE) {
      aProp->setStringValue("speed-restrict", restrictionToString(_speedRes=
trict));
      aProp->setDoubleValue("speed", _speed);
    }
  }

(not very interesting IMHO), the actual writing to file being done
above in FlightPlan::save() by

[2] (simgear/props/props_io.cxx):

  void
  writeProperties (const SGPath &path, const SGPropertyNode * start_node,
                   bool write_all, SGPropertyNode::Attribute archive_flag)
  {
    SGPath dpath(path);
    dpath.create_dir(0755);

    ofstream output(path.local8BitStr().c_str());
    if (output.good()) {
      writeProperties(output, start_node, write_all, archive_flag);
    } else {
      throw sg_io_exception("Cannot open file", sg_location(path.utf8Str())=
);
    }
  }

which relies on (same file):

  void
  writeProperties (ostream &output, const SGPropertyNode * start_node,
                   bool write_all, SGPropertyNode::Attribute archive_flag)
  {
    int nChildren =3D start_node->nChildren();

    output << "<?xml version=3D\"1.0\"?>" << endl << endl;
    output << "<PropertyList>" << endl;

    for (int i =3D 0; i < nChildren; i++) {
      writeNode(output, start_node->getChild(i), write_all, INDENT_STEP, ar=
chive_flag);
    }

    output << "</PropertyList>" << endl;
  }

...

All this to say that the *contents* written to an arbitrary file is
rather constrained, unless I missed something, and that an attacker has
very little control over it. This contents is a flightplan in
FlightGear's XML PropertyList format
(<http://wiki.flightgear.org/PropertyList_XML_files>) and the attacker
basically only gets to choose the departure, arrival and intermediate
waypoints... which gives something as the LFPO-EDDF.xml file I am
attaching to this mail.

So, from my POV, an attacker can:
  - destroy any user-writable file he wants (not remove it, but
    overwrite it with a flightplan in XML format)
    -> data loss
  - because of this, cause software malfunctions
    -> =E2=80=9CDoS=E2=80=9D

But AFAICT, the attacker has *very little control* over the kinds of
malfunctions he can cause, thus it is unclear to me how to go from the
vulnerability to arbitrary code execution.

Of course, I might have missed something and am ready to be educated if
this happens to be the case; though, as Salvatore said in private mail
inviting me to post this here, the mention of arbitrary code execution
in his post was rather the result of a misunderstanding (no worries).

Regards

--=20
Florent

--=-=-=
Content-Type: application/xml; charset=utf-8
Content-Disposition: attachment; filename=LFPO-EDDF.xml
Content-Transfer-Encoding: base64
Content-Description: Sample flightplan in FlightGear's XML-based
 PropertyList format

PD94bWwgdmVyc2lvbj0iMS4wIj8+Cgo8UHJvcGVydHlMaXN0PgogIDx2ZXJz
aW9uIHR5cGU9ImludCI+MjwvdmVyc2lvbj4KICA8ZGVwYXJ0dXJlPgogICAg
PGFpcnBvcnQgdHlwZT0ic3RyaW5nIj5MRlBPPC9haXJwb3J0PgogIDwvZGVw
YXJ0dXJlPgogIDxkZXN0aW5hdGlvbj4KICAgIDxhaXJwb3J0IHR5cGU9InN0
cmluZyI+RURERjwvYWlycG9ydD4KICA8L2Rlc3RpbmF0aW9uPgogIDxyb3V0
ZT4KICAgIDx3cD4KICAgICAgPHR5cGUgdHlwZT0ic3RyaW5nIj5uYXZhaWQ8
L3R5cGU+CiAgICAgIDxkZXBhcnR1cmUgdHlwZT0iYm9vbCI+dHJ1ZTwvZGVw
YXJ0dXJlPgogICAgICA8aWRlbnQgdHlwZT0ic3RyaW5nIj5MRlBPPC9pZGVu
dD4KICAgICAgPGxvbiB0eXBlPSJkb3VibGUiPjIuMzY4NzIyMzI8L2xvbj4K
ICAgICAgPGxhdCB0eXBlPSJkb3VibGUiPjQ4LjcyNjcwODI5PC9sYXQ+CiAg
ICA8L3dwPgogICAgPHdwIG49IjEiPgogICAgICA8dHlwZSB0eXBlPSJzdHJp
bmciPm5hdmFpZDwvdHlwZT4KICAgICAgPGFsdC1yZXN0cmljdCB0eXBlPSJz
dHJpbmciPmF0PC9hbHQtcmVzdHJpY3Q+CiAgICAgIDxhbHRpdHVkZS1mdCB0
eXBlPSJkb3VibGUiPjI5NDAwPC9hbHRpdHVkZS1mdD4KICAgICAgPGlkZW50
IHR5cGU9InN0cmluZyI+UkFOVVg8L2lkZW50PgogICAgICA8bG9uIHR5cGU9
ImRvdWJsZSI+NC4zNjE2Njc8L2xvbj4KICAgICAgPGxhdCB0eXBlPSJkb3Vi
bGUiPjQ5LjEzODg4OTwvbGF0PgogICAgPC93cD4KICAgIDx3cCBuPSIyIj4K
ICAgICAgPHR5cGUgdHlwZT0ic3RyaW5nIj5uYXZhaWQ8L3R5cGU+CiAgICAg
IDxhbHQtcmVzdHJpY3QgdHlwZT0ic3RyaW5nIj5hdDwvYWx0LXJlc3RyaWN0
PgogICAgICA8YWx0aXR1ZGUtZnQgdHlwZT0iZG91YmxlIj4yOTAwMDwvYWx0
aXR1ZGUtZnQ+CiAgICAgIDxpZGVudCB0eXBlPSJzdHJpbmciPk1FRE9YPC9p
ZGVudD4KICAgICAgPGxvbiB0eXBlPSJkb3VibGUiPjUuMDk2OTQ0PC9sb24+
CiAgICAgIDxsYXQgdHlwZT0iZG91YmxlIj40OS4zMzM2MTE8L2xhdD4KICAg
IDwvd3A+CiAgICA8d3Agbj0iMyI+CiAgICAgIDx0eXBlIHR5cGU9InN0cmlu
ZyI+bmF2YWlkPC90eXBlPgogICAgICA8YWx0LXJlc3RyaWN0IHR5cGU9InN0
cmluZyI+YXQ8L2FsdC1yZXN0cmljdD4KICAgICAgPGFsdGl0dWRlLWZ0IHR5
cGU9ImRvdWJsZSI+MjM4MDA8L2FsdGl0dWRlLWZ0PgogICAgICA8aWRlbnQg
dHlwZT0ic3RyaW5nIj5WQUxFSzwvaWRlbnQ+CiAgICAgIDxsb24gdHlwZT0i
ZG91YmxlIj41Ljc4MTExMTwvbG9uPgogICAgICA8bGF0IHR5cGU9ImRvdWJs
ZSI+NDkuNTE0NDQ0PC9sYXQ+CiAgICA8L3dwPgogICAgPHdwIG49IjQiPgog
ICAgICA8dHlwZSB0eXBlPSJzdHJpbmciPm5hdmFpZDwvdHlwZT4KICAgICAg
PGFsdC1yZXN0cmljdCB0eXBlPSJzdHJpbmciPmF0PC9hbHQtcmVzdHJpY3Q+
CiAgICAgIDxhbHRpdHVkZS1mdCB0eXBlPSJkb3VibGUiPjIzMzAwPC9hbHRp
dHVkZS1mdD4KICAgICAgPGlkZW50IHR5cGU9InN0cmluZyI+TElQTkk8L2lk
ZW50PgogICAgICA8bG9uIHR5cGU9ImRvdWJsZSI+NS44NDU4MzM8L2xvbj4K
ICAgICAgPGxhdCB0eXBlPSJkb3VibGUiPjQ5LjUzPC9sYXQ+CiAgICA8L3dw
PgogICAgPHdwIG49IjUiPgogICAgICA8dHlwZSB0eXBlPSJzdHJpbmciPm5h
dmFpZDwvdHlwZT4KICAgICAgPGFsdC1yZXN0cmljdCB0eXBlPSJzdHJpbmci
PmF0PC9hbHQtcmVzdHJpY3Q+CiAgICAgIDxhbHRpdHVkZS1mdCB0eXBlPSJk
b3VibGUiPjE5NTAwPC9hbHRpdHVkZS1mdD4KICAgICAgPGlkZW50IHR5cGU9
InN0cmluZyI+TElNR088L2lkZW50PgogICAgICA8bG9uIHR5cGU9ImRvdWJs
ZSI+Ni4yODE2Njc8L2xvbj4KICAgICAgPGxhdCB0eXBlPSJkb3VibGUiPjQ5
LjYzNzIyMjwvbGF0PgogICAgPC93cD4KICAgIDx3cCBuPSI2Ij4KICAgICAg
PHR5cGUgdHlwZT0ic3RyaW5nIj5uYXZhaWQ8L3R5cGU+CiAgICAgIDxhcHBy
b2FjaCB0eXBlPSJib29sIj50cnVlPC9hcHByb2FjaD4KICAgICAgPGlkZW50
IHR5cGU9InN0cmluZyI+RURERjwvaWRlbnQ+CiAgICAgIDxsb24gdHlwZT0i
ZG91YmxlIj44LjU0MTcyMjQ1MjwvbG9uPgogICAgICA8bGF0IHR5cGU9ImRv
dWJsZSI+NTAuMDMyMTkzMjM8L2xhdD4KICAgIDwvd3A+CiAgPC9yb3V0ZT4K
PC9Qcm9wZXJ0eUxpc3Q+Cg==

--=-=-=--

--==-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEEltaD9t4j90O9Bqdx4W5C1BTo6IFAlhULBMACgkQx4W5C1BT
o6K5fg/+PskvxSWWTJdka6AftnL5enCuwOqJ51EdaKkC/r9aCCoTuBoyHSMZTq3s
cqS/0Xykx6JjlEgvou7nxYlhP7ixB3nG7wqET4x3ZQHCkpiBXz9ZX1ckndqu0vCb
kLHgkP8Nmmc4okU8WUNFjDgq0Spr3QHmGX5/MhWYwwmTCH9EX1zzKGOjDLgvv+lQ
NBuzMcY90Apo/tZwSvU7WR5ferJT7Pf9DOIFiomCtaC2hMUDVvN6Q+aftyVmkbD9
Ho/+yXB8hBtGHD1e+cXbsq8y1HdGW3rgd0G2UjerZabnYqpuLDJar9jgiKjZupY0
vX7yra/7oeRSoS9A2ZLBEqujY4e3BTmq6ESQHsdVGHCtisV0sF+1+yxozof76nl5
AIn3/SwHFvdF2FNCkk3V7IG9wkD8G/xzBdfq2uEK9mWxkyw3vbjoPBKYPOmN3iDF
59AbhPI/rQtxQRl6V3hEfIK7bponHNWxcKZaxqNaMzobPbAT/G4Pd0VE6gMOW3em
BSFrDLttup1ndnWkO500aFg34WGQ/pHhPiUT4EgkLJV0QKNSP5eVbC0CQkWj9vt3
UDp4iCbqKicTElKlEOZgb1hNzL69cE1PBDzbPnKoMcD7AVRzTHhhKxk2jgqjvbuw
7gWyaqJLWWQQ5H9D9PdvK8ClrQNUBTpQ5XC2t5Np/mA8tlsm6s0=
=Thmd
-----END PGP SIGNATURE-----
--==-=-=--
