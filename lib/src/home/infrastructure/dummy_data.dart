import 'package:bund/src/core/utility/assets_data.dart';

const List<Map<String, dynamic>> sliderData = [
  {
    'name': 'Standard',
    'photos': [AssetsData.standard]
  },
  {
    'name': 'Plus',
    'photos': [AssetsData.plus]
  },
  {
    'name': 'Max',
    'photos': [
      AssetsData.max1,
      AssetsData.max,
    ]
  },
  {
    'name': 'Unlimited',
    'photos': [
      AssetsData.unlimited1,
      AssetsData.unlimited,
    ]
  }
];
const List<List<Map<String, String>>> homeConditions = [
  [
    {
      'name': 'No Minimum Deposit',
      'icon': AssetsData.minimum,
    },
    {
      'name': r'$15/Month (Paid Annually)',
      'icon': AssetsData.bank,
    },
  ],
  [
    {
      'name': r'$10,000 Minimum',
      'icon': AssetsData.minimum,
    },
    {
      'name': r'$30/Month (Paid Annually)',
      'icon': AssetsData.bank,
    },
  ],
  [
    {
      'name': r'$50,000 Minimum',
      'icon': AssetsData.minimum,
    },
    {
      'name': r'$200/Month (Paid Annually)',
      'icon': AssetsData.bank,
    },
  ],
  [
    {
      'name': r'$500,000 Minimum',
      'icon': AssetsData.minimum,
    },
    {
      'name': r'No Monthly Subscription',
      'icon': AssetsData.bank,
    },
  ],
];
const List<List<Map<String, dynamic>>> whatYouGet = [
  [
    {
      'name': 'Swiss Bank Account',
      'icon': AssetsData.bank,
      'status': true,
    },
    {'name': 'Mastercard Prepaid', 'icon': AssetsData.card1, 'status': true},
    {'name': 'Account Open Same Day', 'icon': AssetsData.volt, 'status': true},
    {
      'name': r'Protected Up To $100,000',
      'icon': AssetsData.umbrella,
      'status': true
    },
    {
      'name': 'Investments Portfolios',
      'icon': AssetsData.seedling,
      'status': false,
    },
    {
      'name': 'Deposits Options',
      'icon': AssetsData.vault,
      'status': false,
    },
  ],
  [
    {
      'name': 'Swiss Bank Account',
      'icon': AssetsData.bank,
      'status': true,
    },
    {
      'name': 'Mastercard\nDebit/Credit',
      'icon': AssetsData.card,
      'status': true
    },
    {
      'name': r'Protected up to $300,000',
      'icon': AssetsData.umbrella,
      'status': true
    },
    {
      'name': 'Investments Portfolios',
      'icon': AssetsData.seedling,
      'status': true,
    },
    {
      'name': 'Deposits Options',
      'icon': AssetsData.vault,
      'status': true,
    },
  ],
  [
    {
      'name': 'Swiss Bank Account',
      'icon': AssetsData.bank,
      'status': true,
    },
    {
      'name': 'Mastercard\nDebit/Credit',
      'icon': AssetsData.card,
      'status': true
    },
    {
      'name': r'Protected up to $300,000',
      'icon': AssetsData.umbrella,
      'status': true
    },
    {
      'name': 'Investments Portfolios',
      'icon': AssetsData.seedling,
      'status': true,
    },
    {
      'name': 'Deposits Options',
      'icon': AssetsData.vault,
      'status': true,
    },
  ],
  [
    {
      'name': 'Swiss Bank Account',
      'icon': AssetsData.bank,
      'status': true,
    },
    {
      'name': 'Mastercard\nDebit/Credit',
      'icon': AssetsData.card,
      'status': true
    },
    {
      'name': r'Protected up to $300,000',
      'icon': AssetsData.umbrella,
      'status': true
    },
    {
      'name': 'Investments Portfolios',
      'icon': AssetsData.seedling,
      'status': true,
    },
    {
      'name': 'Deposits Options',
      'icon': AssetsData.vault,
      'status': true,
    },
  ],
];

const List<Map<String, String>> bonds = [
  {
    'title': 'Netflix INC',
    'subtitle': 'BBB',
    'image': AssetsData.netflix,
    'percent': '5.37% APY',
  },
  {
    'title': 'Ford Motor LLC',
    'subtitle': 'BB+',
    'image': AssetsData.ford,
    'percent': '7.71% APY',
  },
  {
    'title': 'Apple INC',
    'subtitle': 'AA+',
    'image': AssetsData.apple,
    'percent': '4.85% APY',
  },
  {
    'title': 'Morgan Stanley',
    'subtitle': 'A-',
    'image': AssetsData.morgan,
    'percent': '6.27% APY',
  },
];
