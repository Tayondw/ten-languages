# The 10-Language Repo, the *decarepo*

On a quest to unlock a super trophy badge, `Rainbow Lang User`, as designed by [Ryota](https://github.com/ryo-ma) and detailed [here](https://github.com/ryo-ma/github-profile-trophy).

<p align="left"><img width="200" alt="quest to unlock a super trophy" src="https://user-images.githubusercontent.com/6661165/91643641-28cd4780-ea70-11ea-94a9-a51885252700.png">

According to this [code](https://github.com/ryo-ma/github-profile-trophy/blob/master/src/trophy.ts) you need github to recognize 10 languages in your profile:

```ts
export class MultipleLangTrophy extends Trophy{
  constructor(score: number){
    const rankConditions = [
      new RankCondition(
        RANK.SECRET,
        "Rainbow Lang User",
        10,
      ),
    ];
    super(score, rankConditions);
    this.title = "MultiLanguage";
    this.filterTitles = ["MultipleLang", "MultiLanguage"];
    this.hidden = true;
  }
}
```

## Some languages

I will update this as I go

1. Python
2. Rust
3. Go
4. JavaScript
5. TypeScript
6. C++
7. HTML
8. Docker
9. Shell
10. Java

> HTML is classified as `markup` languages; all others are `programming`

## Linguist

Github uses [Linguist](https://github.com/github/linguist/) to calculate language percentage inside a repo. It is based on file sizes and excludes generated files, binary, and non-program (vendor) files. The list of languages identified is [here](https://github.com/github/linguist/blob/master/lib/linguist/languages.yml).

## What Languages?

Clicking on a language in the `Languages` tab will open a search result and detail all the languages that github has indexed in your repo. This is how I found that certain languages (TypeScript and C++) were being excluded.

<p align="center"><img width="800" alt="github languages classification" src="https://user-images.githubusercontent.com/39792005/162554851-077a4f76-6141-4d41-8312-2afb1fd4bced.PNG"></p>
