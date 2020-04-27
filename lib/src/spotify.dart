// Copyright (c) 2017, 'rinukkusu'. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

part of spotify;

class SpotifyApi extends SpotifyApiBase {
  SpotifyApi(SpotifyApiCredentials credentials, [http.Client client])
      : super(credentials, client ?? http.Client());

  SpotifyApi.fromClient(FutureOr<oauth2.Client> client)
      : super.fromClient(client);

  SpotifyApi.fromAuthCodeGrant(
      oauth2.AuthorizationCodeGrant grant, String responseUri)
      : super.fromAuthCodeGrant(grant, responseUri);

  static oauth2.AuthorizationCodeGrant authorizationCodeGrant(
      SpotifyApiCredentials credentials,
      [http.Client client]) {
    return SpotifyApiBase.authorizationCodeGrant(
        credentials, client ?? http.Client());
  }
}
