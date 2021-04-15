class PetType < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' }, { id: 2, name: '犬' }, { id: 3, name: '猫' },
    { id: 4, name: 'ハムスター' }, { id: 5, name: 'ウサギ' }, { id: 6, name: 'ハリネズミ' },
    { id: 7, name: 'インコ' }, { id: 8, name: 'オウム' }, { id: 9, name: 'フェレット' },
    { id: 10, name: 'モルモット' }, { id: 11, name: 'チンチラ' }, { id: 12, name: 'デグー' },
    { id: 13, name: 'テンレック' }, { id: 14, name: 'ヤマネ' }, { id: 15, name: 'フクロウ' },
    { id: 16, name: 'マウス' }, { id: 17, name: 'リス' }, { id: 18, name: 'モモンガ' },
    { id: 19, name: 'ミミズク' }, { id: 20, name: 'サル' }, { id: 21, name: 'ジリス' },
    { id: 22, name: 'フィンチ' }, { id: 23, name: 'ウズラ' }, { id: 24, name: 'カメ' },
    { id: 25, name: 'トカゲ' }, { id: 26, name: 'カエル' }, { id: 27, name: 'ザリガニ' },
    { id: 28, name: 'サソリ' }, { id: 29, name: 'クモ' }, { id: 30, name: 'ヤドカリ' },
    { id: 31, name: '昆虫' }, { id: 32, name: '金魚' }, { id: 33, name: 'コイ' },
    { id: 34, name: '熱帯魚' }, { id: 35, name: 'イモリ' }, { id: 36, name: 'サンショウウオ' },
    { id: 37, name: 'ウーパールーパー' }, { id: 38, name: 'ブタ' }, { id: 39, name: 'その他の小動物' },
    { id: 40, name: 'その他の鳥' }, { id: 41, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :tweets

end
