Received: (qmail 5221 invoked by uid 550); 14 Dec 2022 11:18:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5678 invoked from network); 14 Dec 2022 01:24:10 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1670981039;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=VcWYS689eJsDLi//18sspzO1uUJUxFqQwbjI77ZnL7U=;
	b=gDq/3FADTnq3HzOrNsmF/S+USEJrhjTTKQYg+fSbJNNyQONxETYquSL2SQ8WwbPCmYl0eR
	nYZnZyJEXOo7rCTcmaBD+2f6+mF0ouVJDJhYLDAFpVQCxlVpikhxF7a/DZGYKHO+WuQ+op
	GXZwkwI+FLdDlk40SG3bMjcppQVxMU0=
X-MC-Unique: uCgs2N-fOn-O5N4nlzqISA-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:subject:to:content-language:from
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=VcWYS689eJsDLi//18sspzO1uUJUxFqQwbjI77ZnL7U=;
        b=M12n5CAe61rXelxIGyfZ9UL8LlUs+pn45vTcbiiWd1+Sv9ZGVavxaQZLNBZgoQQqZh
         NALoOcOLlFJyfn5K3bYugfNs5VrxGGUcLoBP3LmaO8hlbbT4Bkt0q2dapeDEkaUFcCWK
         89VJNMvYdBftqLZjaus21i0zFk7BsTXUCEcbJewkeD91epoIUoKeF61MPJoW74whkpAX
         uW28Hxz8jWKnuOqDHwVtZe7pYt0zwzxSvsC5xvjvZevsgN8a4/g3x4OQJZGd6oa7xP/O
         xuN0nXGGLyXFVPExKNb3WxKCZMoRQCRMNdDFHZa37x7BB2WDgpFkA+4ASVvNWP+jb8/R
         JB3A==
X-Gm-Message-State: ANoB5plt4wHoHzK2F7n49fR0WwbwiZmLkyc8Wg1itYLX4ybjgKst9a/6
	wELDPn9sgnyHQa9aU5kfeF/LwFQ71wkYgcZyDQfp6dKRUj1OGR1wJjftOUGgSh0gwDNEJZGebjU
	N1t/yKQwMqkPijXoiBn0XP1/qjkeiVT/ZkmG47pq2iHiLPdTjTWnnT1ijalq8nrQsMJD7YeDjO4
	etY7OVrU+ajzFz
X-Received: by 2002:a17:903:328c:b0:189:85e9:f6d0 with SMTP id jh12-20020a170903328c00b0018985e9f6d0mr21985277plb.47.1670981036204;
        Tue, 13 Dec 2022 17:23:56 -0800 (PST)
X-Google-Smtp-Source: AA0mqf5AGNF2c7ntdIVn8gLjeqsKPVXY+MRKDDaz4akYJ0VRJRMzk+5f75cHE7MWTV3hLoQpXFBn0Q==
X-Received: by 2002:a17:903:328c:b0:189:85e9:f6d0 with SMTP id jh12-20020a170903328c00b0018985e9f6d0mr21985245plb.47.1670981035567;
        Tue, 13 Dec 2022 17:23:55 -0800 (PST)
Message-ID: <e7573ba8-846b-b91a-5655-e4f5db2cdf88@redhat.com>
Date: Wed, 14 Dec 2022 11:23:51 +1000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
From: Peter Hutterer <peter.hutterer@redhat.com>
To: oss-security@lists.openwall.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] X.Org Security Advisory: multiple security issues in X server
 extensions

X.Org Security Advisory: Dec 14, 2022

Multiple security issues in X server extensions
===============================================

All theses issues can lead to local privileges elevation on systems
where the X server is running privileged and remote code execution for
ssh X forwarding sessions.

* CVE-2022-46340/ZDI-CAN-19265: X.Org Server XTestSwapFakeInput stack
overflow

The swap handler for the XTestFakeInput request of the XTest extension
may corrupt the stack if GenericEvents with lengths larger than 32 bytes
are sent through a the XTestFakeInput request.

This issue does not affect systems where client and server use the same
byte order.

* CVE-2022-46341/ZDI-CAN-19381: X.Org Server XIPassiveUngrab
out-of-bounds access

The handler for the XIPassiveUngrab request accesses out-of-bounds
memory when invoked with a high keycode or button code.

* CVE-2022-46342/ZDI-CAN-19400: X.Org Server XvdiSelectVideoNotify
use-after-free

The handler for the XvdiSelectVideoNotify request may write to memory
after it has been freed.

* CVE-2022-46343/ZDI-CAN-19404: X.Org Server ScreenSaverSetAttributes
use-after-free

The handler for the ScreenSaverSetAttributes request may write to memory
after it has been freed.

* CVE-2022-46344/ZDI-CAN-19405: X.Org Server XIChangeProperty
out-of-bounds access

The handler for the XIChangeProperty request has a length-validation
issues, resulting in out-of-bounds memory reads and potential
information disclosure.

* CVE-2022-46283/ZDI-CAN-19530: X.Org Server XkbGetKbdByName use-after-free

The XkbCopyNames function left a dangling pointer to freed memory, 
resulting in out-of-bounds memory access on subsequent XkbGetKbdByName 
requests.


Patches
-------
Patches for theses issues have been committed to the xorg server git
repository. xorg-server 21.1.5 will be released shortly and will include
these patches.


- commit b320ca0ffe4c0c872eeb3a93d9bde21f765c7c63

Xtest: disallow GenericEvents in XTestSwapFakeInput

XTestSwapFakeInput assumes all events in this request are
sizeof(xEvent) and iterates through these in 32-byte increments.
However, a GenericEvent may be of arbitrary length longer than 32 bytes,
so any GenericEvent in this list would result in subsequent events to be
misparsed.

Additional, the swapped event is written into a stack-allocated struct
xEvent (size 32 bytes). For any GenericEvent longer than 32 bytes,
swapping the event may thus smash the stack like an avocado on toast.

Catch this case early and return BadValue for any GenericEvent.
Which is what would happen in unswapped setups anyway since XTest
doesn't support GenericEvent.

CVE-2022-46340, ZDI-CAN 19265


- commit 51eb63b0ee1509c6c6b8922b0e4aa037faa6f78b

Xi: disallow passive grabs with a detail > 255

The XKB protocol effectively prevents us from ever using keycodes above
255. For buttons it's theoretically possible but realistically too niche
to worry about. For all other passive grabs, the detail must be zero
anyway.

This fixes an OOB write:

ProcXIPassiveUngrabDevice() calls DeletePassiveGrabFromList with a
temporary grab struct which contains tempGrab->detail.exact = stuff->detail.
For matching existing grabs, DeleteDetailFromMask is called with the
stuff->detail value. This function creates a new mask with the one bit
representing stuff->detail cleared.

However, the array size for the new mask is 8 * sizeof(CARD32) bits,
thus any detail above 255 results in an OOB array write.

CVE-2022-46341, ZDI-CAN 19381


- commit b79f32b57cc0c1186b2899bce7cf89f7b325161b

Xext: free the XvRTVideoNotify when turning off from the same client

This fixes a use-after-free bug:

When a client first calls XvdiSelectVideoNotify() on a drawable with a
TRUE onoff argument, a struct XvVideoNotifyRec is allocated. This struct
is added twice to the resources:
     - as the drawable's XvRTVideoNotifyList. This happens only once per
       drawable, subsequent calls append to this list.
     - as the client's XvRTVideoNotify. This happens for every client.

The struct keeps the ClientPtr around once it has been added for a
client. The idea, presumably, is that if the client disconnects we can
remove all structs from the drawable's list that match the client (by 
resetting the ClientPtr to NULL), but if the drawable is destroyed we 
can remove and free the whole list.

However, if the same client then calls XvdiSelectVideoNotify() on the
same drawable with a FALSE onoff argument, only the ClientPtr on the
existing struct was set to NULL. The struct itself remained in the
client's resources.

If the drawable is now destroyed, the resource system invokes
XvdiDestroyVideoNotifyList which frees the whole list for this drawable
- including our struct. This function however does not free the resource
for the client since our ClientPtr is NULL.

Later, when the client is destroyed and the resource system invokes
XvdiDestroyVideoNotify, we unconditionally set the ClientPtr to NULL. On
a struct that has been freed previously. This is generally frowned upon.

Fix this by calling FreeResource() on the second call instead of merely
setting the ClientPtr to NULL. This removes the struct from the client
resources (but not from the list), ensuring that it won't be accessed
again when the client quits.

Note that the assignment tpn->client = NULL; is superfluous since the
XvdiDestroyVideoNotify function will do this anyway. But it's left for
clarity and to match a similar invocation in XvdiSelectPortNotify.

CVE-2022-46342, ZDI-CAN 19400


- commit 842ca3ccef100ce010d1d8f5f6d6cc1915055900

Xext: free the screen saver resource when replacing it

This fixes a use-after-free bug:

When a client first calls ScreenSaverSetAttributes(), a struct
ScreenSaverAttrRec is allocated and added to the client's
resources.

When the same client calls ScreenSaverSetAttributes() again, a new
struct ScreenSaverAttrRec is allocated, replacing the old struct. The
old struct was freed but not removed from the clients resources.

Later, when the client is destroyed the resource system invokes
ScreenSaverFreeAttr and attempts to clean up the already freed struct.

Fix this by letting the resource system free the old attrs instead.

CVE-2022-46343, ZDI-CAN 19404


- commit b8a84cb0f2807b07ab70ca9915fcdee21301b8ca

Xi: return an error from XI property changes if verification failed

Both ProcXChangeDeviceProperty and ProcXIChangeProperty checked the
property for validity but didn't actually return the potential error.


- commit 8f454b793e1f13c99872c15f0eed1d7f3b823fe8

Xi: avoid integer truncation in length check of ProcXIChangeProperty

This fixes an OOB read and the resulting information disclosure.

Length calculation for the request was clipped to a 32-bit integer. With
the correct stuff->num_items value the expected request size was
truncated, passing the REQUEST_FIXED_SIZE check.

The server then proceeded with reading at least stuff->num_items bytes
(depending on stuff->format) from the request and stuffing whatever it
finds into the property. In the process it would also allocate at least
stuff->num_items bytes, i.e. 4GB.

The same bug exists in ProcChangeProperty and ProcXChangeDeviceProperty,
so let's fix that too.

CVE-2022-46344, ZDI-CAN 19405


- commit ccdd431cd8f1cabae9d744f0514b6533c438908c

xkb: reset the radio_groups pointer to NULL after freeing it

Unlike other elements of the keymap, this pointer was freed but not
reset. On a subsequent XkbGetKbdByName request, the server may access
already freed memory.

CVE-2022-4283, ZDI-CAN-19530


Thanks
======

The vulnerabilities have been discovered by Jan-Niklas Sohn working with
Trend Micro Zero Day Initiative.

