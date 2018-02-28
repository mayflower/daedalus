import React from 'react';
import { storiesOf } from '@storybook/react';
import { action } from '@storybook/addon-actions';
import StoryDecorator from './support/StoryDecorator';
import SidebarWalletsMenu from '../app/components/sidebar/wallets/SidebarWalletsMenu';

storiesOf('SidebarWalletsMenu', module)

  .addDecorator((story) => (
    <StoryDecorator>
      <div style={{ width: '200px' }}>{story()}</div>
    </StoryDecorator>
  ))

  // ====== Stories ======

  .add('empty', () => (
    <SidebarWalletsMenu
      wallets={[]}
      onAddWallet={action('addWallet')}
      visible
    />
  ))

  .add('with items', () => (
    <SidebarWalletsMenu
      wallets={[
        { id: '1', title: 'Main wallet', info: 'ADA' },
        { id: '2', title: 'House rent', info: '274912874,35 ADA' },
        { id: '3', title: 'Mining', info: '0,0004924712 BTC' },
        { id: '4', title: 'Shopping wallet', info: 'ADA' },
      ]}
      isActiveWallet={(id) => id === '2'}
      onWalletItemClick={action('walletItemClick')}
      onAddWallet={action('addWallet')}
      visible
    />
  ));
